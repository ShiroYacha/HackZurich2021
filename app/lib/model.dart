import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

part 'model.freezed.dart';
part 'model.g.dart';

U? buildWhen<T, U>(T input, Map<bool Function(T), U Function(T)> map,
    {U? Function()? orElse}) {
  for (final predicate in map.keys) {
    if (predicate(input)) {
      return map[predicate]!(input);
    }
  }
  return (orElse ?? () => null)();
}

U? buildIf<U>(Map<bool Function(), U Function()> map, {U? Function()? orElse}) {
  for (final predicate in map.keys) {
    if (predicate()) {
      return map[predicate]!();
    }
  }
  return (orElse ?? () => null)();
}

@freezed
class ErrorResult with _$ErrorResult {
  factory ErrorResult({
    @JsonKey(name: 'message') required String message,
    @JsonKey(name: 'status') required String status,
  }) = _ErrorResult;

  factory ErrorResult.fromJson(Map<String, dynamic> json) =>
      _$ErrorResultFromJson(json);
}

@freezed
class User with _$User {
  factory User({
    required String id,
    required String name,
    required List<String> communityIds,
    String? avatarUrl,
  }) = _User;
  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}

@freezed
class UsersUnion with _$UsersUnion {
  const UsersUnion._();
  factory UsersUnion({
    @JsonKey(name: 'users') required List<User> users,
  }) = Users;

  factory UsersUnion.error(ErrorResult error) = UsersError;

  factory UsersUnion.loading() = UsersLoading;

  factory UsersUnion.fromJson(Map<String, dynamic> json) =>
      _$UsersUnionFromJson(json);

  User? tryGetUserById(String id) {
    for (var user in maybeMap((value) => value.users, orElse: () => <User>[])) {
      if (user.id == id) return user;
    }
    return null;
  }
}

@freezed
class Community with _$Community {
  factory Community({
    required String id,
    required String name,
    required String label,
    required String invitationCode,
    required String magicWord,
    String? backgroundUrl,
  }) = _Community;
  factory Community.fromJson(Map<String, dynamic> json) =>
      _$CommunityFromJson(json);
}

@freezed
class CommunitiesUnion with _$CommunitiesUnion {
  const CommunitiesUnion._();
  factory CommunitiesUnion({
    @JsonKey(name: 'communitiess') required List<Community> communities,
  }) = Communities;

  factory CommunitiesUnion.error(ErrorResult error) = CommunitiesError;

  factory CommunitiesUnion.loading() = CommunitiesLoading;

  factory CommunitiesUnion.fromJson(Map<String, dynamic> json) =>
      _$CommunitiesUnionFromJson(json);

  Community? tryGetCommunitiesById(String id) {
    for (var communities in maybeMap((value) => value.communities,
        orElse: () => <Community>[])) {
      if (communities.id == id) return communities;
    }
    return null;
  }
}

@freezed
class Event with _$Event {
  const Event._();
  factory Event({
    required String id,
    required String name,
    required EventStatus status,
    required String communityId,
    required EventCategory category,
    required String description,
    required String organizerId,
    required List<String> yesParticipantIds,
    required List<String> maybeParticipantIds,
    required List<String> noParticipantIds,
    String? backgroundUrl,
  }) = _Event;
  factory Event.fromJson(Map<String, dynamic> json) => _$EventFromJson(json);

  EventDecision? participantDecision(String uid) => buildIf({
        () => yesParticipantIds.contains(uid): () => EventDecision.yes,
        () => maybeParticipantIds.contains(uid): () => EventDecision.maybe,
        () => noParticipantIds.contains(uid): () => EventDecision.no,
      });
}

@freezed
class EventsUnion with _$EventsUnion {
  const EventsUnion._();
  factory EventsUnion({
    @JsonKey(name: 'events') required List<Event> events,
  }) = Events;

  factory EventsUnion.error(ErrorResult error) = EventsError;

  factory EventsUnion.loading() = EventsLoading;

  factory EventsUnion.fromJson(Map<String, dynamic> json) =>
      _$EventsUnionFromJson(json);

  Event? tryGetEventById(String id) {
    for (var event
        in maybeMap((value) => value.events, orElse: () => <Event>[])) {
      if (event.id == id) return event;
    }
    return null;
  }
}

enum EventStatus {
  archived,
  pending,
  upcoming,
  completed,
}

enum EventDecision {
  yes,
  maybe,
  no,
}

extension EventDecisionExtension on EventDecision {
  String get title =>
      buildIf({
        () => this == EventDecision.yes: () => 'Yes',
        () => this == EventDecision.maybe: () => 'Maybe',
        () => this == EventDecision.no: () => 'No',
      }) ??
      '';
  String get longTitle =>
      buildIf({
        () => this == EventDecision.yes: () => 'Yes, I\'m going',
        () => this == EventDecision.maybe: () => 'Maybe going',
        () => this == EventDecision.no: () => 'Not going',
      }) ??
      '';
  IconData get iconCircled =>
      buildIf({
        () => this == EventDecision.yes: () => FeatherIcons.checkCircle,
        () => this == EventDecision.maybe: () => FeatherIcons.helpCircle,
        () => this == EventDecision.no: () => FeatherIcons.xCircle,
      }) ??
      FeatherIcons.helpCircle;

  IconData get icon =>
      buildIf({
        () => this == EventDecision.yes: () => FeatherIcons.check,
        () => this == EventDecision.maybe: () => MdiIcons.progressQuestion,
        () => this == EventDecision.no: () => FeatherIcons.x,
      }) ??
      FeatherIcons.helpCircle;

  Color get color =>
      buildIf({
        () => this == EventDecision.yes: () => Colors.teal,
        () => this == EventDecision.maybe: () => Colors.blue,
        () => this == EventDecision.no: () => Colors.red,
      }) ??
      Colors.blue;

  double get opacity =>
      buildIf({
        () => this == EventDecision.yes: () => 1,
      }) ??
      0.6;
}

enum EventCategory {
  hackathon,
  hiking,
  bbq,
  gamenight,
  lasertag,
  escaperoom,
}

extension EventCategoryExtension on EventCategory {
  IconData get icon =>
      buildIf({
        () => this == EventCategory.hackathon: () => FeatherIcons.code,
        () => this == EventCategory.hiking: () => MdiIcons.hiking,
        () => this == EventCategory.bbq: () => MdiIcons.sausage,
        () => this == EventCategory.gamenight: () => MdiIcons.partyPopper,
        () => this == EventCategory.lasertag: () => MdiIcons.laserPointer,
        () => this == EventCategory.escaperoom: () => MdiIcons.lockOpenVariant,
      }) ??
      FeatherIcons.helpCircle;

  String get title =>
      buildIf({
        () => this == EventCategory.hackathon: () => 'Hackathon',
        () => this == EventCategory.hiking: () => 'Hiking',
        () => this == EventCategory.bbq: () => 'BBQ',
        () => this == EventCategory.gamenight: () => 'Game night',
        () => this == EventCategory.lasertag: () => 'Laser tag',
        () => this == EventCategory.escaperoom: () => 'Escape room',
      }) ??
      '';
}

@Freezed(unionKey: 'type', unionValueCase: FreezedUnionCase.snake)
class EventSectionItemUnion with _$EventSectionItemUnion {
  const EventSectionItemUnion._();
  factory EventSectionItemUnion.location({
    required String id,
    required String eventId,
    required String communityId,
    required String type,
    required EventDecision decision,
    required String title,
    required String subtitle,
    required List<String> yesParticipantIds,
    required List<String> maybeParticipantIds,
    required List<String> noParticipantIds,
  }) = EventLocationSection;

  factory EventSectionItemUnion.time({
    required String id,
    required String eventId,
    required String communityId,
    required String type,
    required EventDecision decision,
    required String title,
    required String subtitle,
    required List<String> yesParticipantIds,
    required List<String> maybeParticipantIds,
    required List<String> noParticipantIds,
  }) = EventTimeSection;

  factory EventSectionItemUnion.lunch({
    required String id,
    required String eventId,
    required String communityId,
    required String type,
    required EventDecision decision,
    required String title,
    required String subtitle,
    required List<String> yesParticipantIds,
    required List<String> maybeParticipantIds,
    required List<String> noParticipantIds,
  }) = EventLunchSection;

  factory EventSectionItemUnion.dinner({
    required String id,
    required String eventId,
    required String communityId,
    required String type,
    required EventDecision decision,
    required String title,
    required String subtitle,
    required List<String> yesParticipantIds,
    required List<String> maybeParticipantIds,
    required List<String> noParticipantIds,
  }) = EventDinnerSection;

  IconData get icon =>
      buildIf({
        () => this is EventLocationSection: () => FeatherIcons.mapPin,
        () => this is EventTimeSection: () => FeatherIcons.calendar,
        () => this is EventLunchSection: () => MdiIcons.food,
        () => this is EventDinnerSection: () => MdiIcons.silverwareForkKnife,
      }) ??
      FeatherIcons.helpCircle;

  double get opacity => decision.opacity;

  factory EventSectionItemUnion.fromJson(Map<String, dynamic> json) =>
      _$EventSectionItemUnionFromJson(json);
}

@freezed
class EventSectionItemsUnion with _$EventSectionItemsUnion {
  const EventSectionItemsUnion._();
  factory EventSectionItemsUnion({
    @JsonKey(name: 'eventSections')
        required List<EventSectionItemUnion> eventSectionItems,
  }) = EventSectionItems;

  factory EventSectionItemsUnion.error(ErrorResult error) =
      EventSectionItemsError;

  factory EventSectionItemsUnion.loading() = EventSectionItemsLoading;

  factory EventSectionItemsUnion.fromJson(Map<String, dynamic> json) =>
      _$EventSectionItemsUnionFromJson(json);

  EventSectionItemUnion? tryGetEventSectionById(String id) {
    for (var eventSection in maybeMap((value) => value.eventSectionItems,
        orElse: () => <EventSectionItemUnion>[])) {
      if (eventSection.id == id) return eventSection;
    }
    return null;
  }
}
