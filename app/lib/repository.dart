import 'dart:async';

import 'package:app/model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:collection/src/iterable_extensions.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'firebase_service.dart';

final myUserIdProvider = StateProvider<String?>((ref) => null);

final myUserProvider = StateProvider<User?>((ref) => null);

final usersRepositoryProvider =
    StateNotifierProvider<UsersRepository, UsersUnion>(
        (ref) => UsersRepository(ref));

final currentCommunityIdProvider = StateProvider<String?>((_) => null);

final currentCommunityProvider = StateProvider<Community?>((ref) => null);

final communityUsersRepositoryProvider =
    StateNotifierProvider<UsersRepository, UsersUnion>((ref) {
  final currentCommunityId = ref.watch(currentCommunityIdProvider);
  return UsersRepository(ref, wheres: [
    if (currentCommunityId.state != null)
      Where('community_ids', arrayContains: currentCommunityId.state)
  ]);
});

final communitiesRepositoryProvider =
    StateNotifierProvider<CommunitiesRepository, CommunitiesUnion>(
        (ref) => CommunitiesRepository(ref));

final currentEventIdProvider = StateProvider<String?>((ref) => null);

final currentEventProvider = StateProvider<Event?>((ref) => null);

final eventsRepositoryProvider =
    StateNotifierProvider<EventsRepository, EventsUnion>(
        (ref) => EventsRepository(ref));

final eventUsersRepositoryProvider =
    StateNotifierProvider<UsersRepository, UsersUnion>((ref) {
  final currentEventId = ref.watch(currentEventIdProvider);
  return UsersRepository(ref,
      wheres: [Where('event_ids', arrayContains: currentEventId.state)]);
});

final eventSectionItemsRepositoryProvider =
    StateNotifierProvider<EventSectionItemsRepository, EventSectionItemsUnion>(
        (ref) {
  return EventSectionItemsRepository(ref);
});

class UsersRepository extends StateNotifier<UsersUnion> {
  final ProviderReference _ref;
  final List<Where> wheres;
  UsersRepository(this._ref, {this.wheres = const []})
      : super(UsersUnion.loading());

  Future loadUsers() async {
    final firebaseService = _ref.read(firebaseServiceProvider);
    final myUserId = _ref.watch(myUserIdProvider);
    final myUser = _ref.read(myUserProvider);
    try {
      final users = await firebaseService.loadCollection<User>(
        ['users'],
        (snapshot, options) => User.fromJson(
            <String, dynamic>{'id': snapshot.id}..addAll(snapshot.data()!)),
        wheres: wheres,
      );
      state = UsersUnion(users: users);
      if (myUserId.state != null && wheres.isEmpty) {
        myUser.state = users.singleWhereOrNull((u) => u.id == myUserId.state);
      }
    } on FirebaseException catch (e) {
      state = UsersUnion.error(ErrorResult(
          message: '${e.code} = ${e.message}', status: 'APP_ERROR'));
    }
  }
}

class CommunitiesRepository extends StateNotifier<CommunitiesUnion> {
  final ProviderReference _ref;

  CommunitiesRepository(this._ref) : super(CommunitiesUnion.loading());

  Future<Community?> findCommunityByCode(String code) async {
    final firebaseService = _ref.read(firebaseServiceProvider);
    final result = await firebaseService
        .callFunctionForResult('findCommunityByCode', data: {'code': code});
    if (result == null) {
      return null;
    }
    return Community.fromJson(result);
  }

  Future loadCommunities() async {
    final firebaseService = _ref.read(firebaseServiceProvider);
    final communityId = _ref.read(currentCommunityIdProvider);
    final community = _ref.read(currentCommunityProvider);
    final user = _ref.read(myUserProvider);
    if (user.state != null) {
      try {
        final communities =
            await firebaseService.loadCollectionByIds<Community>(
          ['communities'],
          (snapshot, options) => Community.fromJson(
              <String, dynamic>{'id': snapshot.id}..addAll(snapshot.data()!)),
          user.state!.communityIds,
        );
        state = CommunitiesUnion(communities: communities);
        if (communityId.state != null) {
          community.state =
              communities.singleWhereOrNull((u) => u.id == communityId.state);
        }
      } on FirebaseException catch (e) {
        state = CommunitiesUnion.error(ErrorResult(
            message: '${e.code} = ${e.message}', status: 'APP_ERROR'));
      }
    }
  }
}

class EventsRepository extends StateNotifier<EventsUnion> {
  final ProviderReference _ref;

  StreamSubscription<List<Event>>? _eventsStreamSubscription;

  EventsRepository(this._ref) : super(EventsUnion.loading());

  Future loadEvents() async {
    final firebaseService = _ref.read(firebaseServiceProvider);
    final communityId = _ref.read(currentCommunityIdProvider);
    final eventId = _ref.read(currentEventIdProvider);
    final event = _ref.read(currentEventProvider);
    _eventsStreamSubscription?.cancel();
    _eventsStreamSubscription = firebaseService
        .listenToCollection<Event>(
            ['events'],
            (snapshot, options) => Event.fromJson(
                <String, dynamic>{'id': snapshot.id}..addAll(snapshot.data()!)),
            wheres: [
              Where('community_id', isEqualTo: communityId.state),
            ])
        .listen((events) {
      if (mounted) {
        state = EventsUnion(events: events);
        // Refresh current if possible
        final currentEvent =
            events.singleWhereOrNull((e) => e.id == eventId.state);
        if (currentEvent != null) {
          event.state = currentEvent;
        }
      }
    });
  }

  Future<void> changeEventDecision(Event event, EventDecision decision) async {
    final firebaseService = _ref.read(firebaseServiceProvider);
    final myId = _ref.read(myUserIdProvider).state!;
    // Update event
    await firebaseService.updateDocument(
      ['events', event.id],
      _renderDecisionUpdateMap(myId, decision),
    );
  }

  Future<void> changeEventSectionDecision(
      EventSectionItemUnion eventSection, EventDecision decision) async {
    final firebaseService = _ref.read(firebaseServiceProvider);
    final myId = _ref.read(myUserIdProvider).state!;
    // Update event
    await firebaseService.updateDocument(
      ['event_sections', eventSection.id],
      _renderDecisionUpdateMap(myId, decision),
    );
  }

  Map<String, dynamic> _renderDecisionUpdateMap(
      String myId, EventDecision decision) {
    return decision == EventDecision.yes
        ? {
            'yes_participant_ids': FieldValue.arrayUnion([myId]),
            'maybe_participant_ids': FieldValue.arrayRemove([myId]),
            'no_participant_ids': FieldValue.arrayRemove([myId]),
          }
        : (decision == EventDecision.maybe
            ? {
                'yes_participant_ids': FieldValue.arrayRemove([myId]),
                'maybe_participant_ids': FieldValue.arrayUnion([myId]),
                'no_participant_ids': FieldValue.arrayRemove([myId]),
              }
            : {
                'yes_participant_ids': FieldValue.arrayRemove([myId]),
                'maybe_participant_ids': FieldValue.arrayRemove([myId]),
                'no_participant_ids': FieldValue.arrayUnion([myId]),
              });
  }

  Future<void> joinEvent(Event event) async {
    final firebaseService = _ref.read(firebaseServiceProvider);
    final myId = _ref.read(myUserIdProvider).state!;
    // Update user
    await firebaseService.updateDocument([
      'users',
      myId
    ], {
      'event_ids': FieldValue.arrayUnion([event.id]),
    });
    // Update event
    await firebaseService.updateDocument([
      'events',
      event.id
    ], {
      'maybe_participant_ids': FieldValue.arrayUnion([myId]),
    });
  }
}

class EventSectionItemsRepository
    extends StateNotifier<EventSectionItemsUnion> {
  final ProviderReference _ref;

  StreamSubscription<List<EventSectionItemUnion>>? _eventsStreamSubscription;

  EventSectionItemsRepository(this._ref)
      : super(EventSectionItemsUnion.loading());

  Future loadEventSectionItems() async {
    final firebaseService = _ref.read(firebaseServiceProvider);
    final eventId = _ref.read(currentEventIdProvider);
    _eventsStreamSubscription?.cancel();
    _eventsStreamSubscription = firebaseService
        .listenToCollection<EventSectionItemUnion>(
            ['event_sections'],
            (snapshot, options) => EventSectionItemUnion.fromJson(
                <String, dynamic>{'id': snapshot.id}..addAll(snapshot.data()!)),
            wheres: [
              Where('event_id', isEqualTo: eventId.state),
            ])
        .listen((events) {
      if (mounted) {
        state = EventSectionItemsUnion(eventSectionItems: events);
      }
    });
  }
}
