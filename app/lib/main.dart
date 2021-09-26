import 'dart:math';

import 'package:collection/src/iterable_extensions.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:app/repository.dart';
import 'package:app/theme.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import "package:flutter_feather_icons/flutter_feather_icons.dart";
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pinput/pin_put/pin_put.dart';
import 'package:speech_to_text/speech_recognition_result.dart';
import 'package:speech_to_text/speech_to_text.dart' as stt;
import 'package:lottie/lottie.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:bot_toast/bot_toast.dart';

import 'model.dart';
import 'page_routing.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(ProviderScope(
    child: MyApp(),
    overrides: [
      myUserIdProvider
          .overrideWithValue(StateController('dD2gNSPcPqSdTTUW8JJiTkZHZOG3')),
      currentCommunityIdProvider
          .overrideWithValue(StateController('community1')),
    ],
  ));
}

const _animationDuration = Duration(seconds: 1);
const _animationInstantDuration = Duration(milliseconds: 200);

class MyApp extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final myId = useProvider(myUserIdProvider);
    final me = useProvider(myUserProvider);
    final usersRepository = useProvider(usersRepositoryProvider.notifier);
    final communitiesRepository =
        useProvider(communitiesRepositoryProvider.notifier);
    useEffect(() {
      usersRepository.loadUsers().then((_) {
        communitiesRepository.loadCommunities();
      });
    }, [myId]);
    return MaterialApp(
      theme: themeData,
      builder: BotToastInit(),
      navigatorObservers: [BotToastNavigatorObserver()],
      home: me.state != null ? HomePage() : Loader(),
      // home: me.state != null ? CommunityPage() : Loader(),
    );
  }
}

class HomePage extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final me = useProvider(myUserProvider);
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'assets/images/hz_background.gif',
            fit: BoxFit.cover,
            height: 1800,
            alignment: Alignment.bottomLeft,
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.only(right: 50, top: 20),
              child: Lottie.asset(
                'assets/lotties/hz_spaceship.json',
              ),
            ),
          ),
          SafeArea(
            child: Padding(
                padding: const EdgeInsets.all(24.0),
                child: Text('OASIS',
                    style: logoTextStyle.copyWith(
                        color: Theme.of(context).primaryColor))),
          ),
        ],
      ),
      floatingActionButton: Padding(
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            FloatingActionButton.extended(
              onPressed: () {
                Navigator.of(context).push(
                  SlideBottomUpRoute(
                    enterWidget: FindTeamPage(),
                    oldWidget: this,
                  ),
                );
              },
              icon: Icon(
                FeatherIcons.radio,
                size: 20,
              ),
              label: Text(
                "Find my team",
                style: buttonTextStyle,
              ),
            ),
            SizedBox(width: 10),
            Avatar(me.state!.avatarUrl!, radius: 24),
          ],
        ),
        padding: const EdgeInsets.all(20),
      ),
    );
  }
}

class FindTeamPage extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    final TextEditingController? codeController = useTextEditingController();
    final codeFocusNode = useFocusNode();
    final codeDecoration = BoxDecoration(
      border: Border.all(color: theme.colorScheme.secondary, width: 5),
      borderRadius: BorderRadius.circular(15.0),
    );

    final speechAnimController = useAnimationController();
    final speechMicAnimController = useAnimationController();
    final speech = useMemoized(() => stt.SpeechToText());
    final speechEnabled = useState(false);
    final speechRecording = useState(false);
    final speechMagicWordFound = useState(false);

    final communityToJoin = useState<Community?>(null);
    final communityId = useProvider(currentCommunityIdProvider);
    final communitiesRepository =
        useProvider(communitiesRepositoryProvider.notifier);

    final codeFound = communityToJoin.value != null;

    useEffect(() {
      if (codeFound) {
        speech.initialize().then((value) {
          speechEnabled.value = value;
        });
      } else {
        codeFocusNode.requestFocus();
      }
      return;
    }, [codeFound]);
    void _onSpeechResult(
      SpeechRecognitionResult result,
    ) {
      final theme = Theme.of(context);
      if (codeFound &&
          !speechMagicWordFound.value &&
          result.recognizedWords.toLowerCase() ==
              communityToJoin.value?.magicWord.toLowerCase()) {
        speechMagicWordFound.value = true;
        speechRecording.value = false;
        showModalBottomSheet(
            context: context,
            backgroundColor: theme.backgroundColor,
            isDismissible: false,
            builder: (ctx) {
              return WillPopScope(
                  child: Column(
                    children: [
                      spacer,
                      Text(
                        'You\'ve found your home!',
                        style: buttonBigTextStyle,
                      ),
                      spacer,
                      Image.asset('assets/images/hz_house.gif'),
                      spacerSmall,
                      ElevatedButton(
                        onPressed: () async {
                          await communitiesRepository
                              .joinCommunity(communityToJoin.value!);
                          communityId.state = communityToJoin.value!.id;
                          Navigator.of(context).pop();
                          Navigator.of(context, rootNavigator: true)
                              .pushReplacement(
                            MaterialPageRoute(
                                builder: (ctx) => CommunityPage()),
                          );
                        },
                        child: Text('Take me there'),
                      ),
                    ],
                  ),
                  onWillPop: () {
                    return Future.value(false);
                  });
            });
      }
    }

    return Scaffold(
      backgroundColor: theme.backgroundColor,
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          Column(
            children: [
              Image.asset(
                'assets/images/hz_urbancampfire.gif',
                fit: BoxFit.cover,
                height: MediaQuery.of(context).size.height / 2.5,
                alignment: Alignment.bottomCenter,
              ),
              Expanded(
                child: Column(
                  children: [
                    spacer,
                    Text(
                      codeFound ? 'Your code' : 'Enter your code',
                      style: buttonBigTextStyle,
                    ),
                    spacer,
                    PinPut(
                      fieldsCount: 5,
                      onSubmit: (String pin) async {
                        codeFocusNode.unfocus();
                        BotToast.showLoading();
                        final community = await communitiesRepository
                            .findCommunityByCode(pin);
                        BotToast.closeAllLoading();
                        communityToJoin.value = community;
                        if (communityToJoin.value == null) {
                          BotToast.showText(text: 'Not found');
                          codeController!.clear();
                          codeFocusNode.requestFocus();
                        }
                      },
                      enabled: !codeFound,
                      focusNode: codeFocusNode,
                      controller: codeController,
                      submittedFieldDecoration: codeDecoration.copyWith(
                        borderRadius: BorderRadius.circular(20.0),
                        color: theme.colorScheme.secondary,
                      ),
                      textStyle: buttonBigTextStyle,
                      selectedFieldDecoration: codeDecoration,
                      followingFieldDecoration: codeDecoration.copyWith(
                        borderRadius: BorderRadius.circular(5.0),
                        color: theme.shadowColor.withOpacity(0.2),
                        border: Border.all(
                          color: theme.shadowColor.withOpacity(.2),
                          width: 5,
                        ),
                      ),
                    ).padHorizontal(40),
                    spacer,
                    spacerHuge,
                    if (codeFound)
                      GestureDetector(
                        child: CircleAvatar(
                          backgroundColor: theme.colorScheme.secondary,
                          radius: 50,
                          child: Lottie.asset(
                            'assets/lotties/hz_microphone.json',
                            width: 60,
                            controller: speechMicAnimController,
                            onLoaded: (composition) {
                              // Configure the AnimationController with the duration of the
                              // Lottie file and start the animation.
                              speechMicAnimController
                                ..duration = composition.duration
                                ..forward();
                              Future.delayed(Duration(seconds: 1), () {
                                speechMicAnimController.stop();
                              });
                            },
                          ),
                        ),
                        onTapDown: (detail) {
                          print('listening...');
                          speechRecording.value = true;
                          speech.listen(onResult: _onSpeechResult);
                        },
                        onTapUp: (detail) {
                          speechRecording.value = false;
                          speech.stop();
                          print('stop listening...');
                        },
                      ),
                    spacerBig,
                    AnimatedOpacity(
                      opacity: codeFound ? 1 : 0,
                      duration: _animationDuration,
                      child: Text(
                        'Say the magic word',
                        style: buttonBigTextStyle,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          if (speechRecording.value)
            Positioned(
              top: MediaQuery.of(context).size.height / 5,
              left: 0,
              right: 0,
              bottom: 0,
              child: Lottie.asset(
                'assets/lotties/hz_voiceline.json',
                width: 1000,
                controller: speechAnimController,
                onLoaded: (composition) {
                  // Configure the AnimationController with the duration of the
                  // Lottie file and start the animation.
                  speechAnimController
                    ..duration = composition.duration
                    ..forward()
                    ..repeat();
                },
              ),
            ),
          BackButton(upwards: true),
        ],
      ),
    );
  }
}

class CommunityPage extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final communityId = useProvider(currentCommunityIdProvider);
    final community = useProvider(currentCommunityProvider);
    final communitiesRepository =
        useProvider(communitiesRepositoryProvider.notifier);
    final communityUsers = useProvider(communityUsersRepositoryProvider);
    final communityUsersRepository =
        useProvider(communityUsersRepositoryProvider.notifier);
    final events = useProvider(eventsRepositoryProvider);
    final eventsRepository = useProvider(eventsRepositoryProvider.notifier);
    useEffect(() {
      communitiesRepository.loadCommunities().then((_) {
        communityUsersRepository.loadUsers();
        eventsRepository.loadEvents();
      });
    }, [
      communityId,
    ]);
    return Scaffold(
      backgroundColor: theme.backgroundColor,
      body: Stack(
        children: [
          if (community.state == null) Loader(),
          if (community.state != null)
            SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    community.state!.backgroundUrl!,
                    fit: BoxFit.cover,
                    alignment: Alignment.bottomRight,
                    height: 250,
                  ),
                  spacer,
                  Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              community.state!.name,
                              style: titleTextStyle,
                            ),
                            Text(
                              community.state!.label,
                              style: buttonTextStyle,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ).padHorizontal(),
                  spacerBig,
                  communityUsers.maybeWhen(
                      (users) => Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Align(
                                child: Text(
                                  '${users.length} members',
                                  style: buttonBigTextStyle,
                                ),
                                alignment: Alignment.topLeft,
                              ),
                              spacer,
                              SizedBox(
                                height: 100,
                                child: ListView(
                                    shrinkWrap: true,
                                    scrollDirection: Axis.horizontal,
                                    children: users
                                        .map((u) => Padding(
                                              padding: const EdgeInsets.only(
                                                  right: 10),
                                              child: Avatar(u.avatarUrl!),
                                            ))
                                        .toList()),
                              ),
                            ],
                          ).padHorizontal(),
                      orElse: () => Loader()),
                  spacer,
                  ...events.maybeWhen((es) {
                    final upcomingEvents = es
                        .where((e) => e.status == EventStatus.upcoming)
                        .toList();
                    final pendingEvents = es
                        .where((e) => e.status == EventStatus.pending)
                        .toList();
                    final pastEvents = es
                        .where((e) => e.status == EventStatus.completed)
                        .toList();
                    return [
                      Text(
                        '${upcomingEvents.length} Upcoming quest(s)',
                        style: buttonBigTextStyle,
                      ).padHorizontal(),
                      spacer,
                      if (upcomingEvents.isEmpty) NoEventsLabel(),
                      ...upcomingEvents
                          .map(
                            (e) => EventCard(e),
                          )
                          .toList(),
                      spacerBig,
                      Text(
                        '${pendingEvents.length} Pending quest(s)',
                        style: buttonBigTextStyle,
                      ).padHorizontal(),
                      spacer,
                      if (pendingEvents.isEmpty) NoEventsLabel(),
                      ...pendingEvents
                          .map(
                            (e) => EventCard(e),
                          )
                          .toList(),
                      spacerBig,
                      Text(
                        '${pastEvents.length} Past quest(s)',
                        style: buttonBigTextStyle,
                      ).padHorizontal(),
                      spacer,
                      if (pastEvents.isEmpty) NoEventsLabel(),
                      ...pastEvents
                          .map(
                            (e) => EventCard(e),
                          )
                          .toList(),
                    ];
                  }, orElse: () => [Loader()]),
                  spacerHuge,
                  spacerHuge,
                  spacerHuge,
                ],
              ),
            ),
          BackButton(),
        ],
      ),
      floatingActionButton: community.state != null
          ? FloatingActionButton.extended(
              onPressed: () {},
              label: Text(
                'Create a quest',
                style: buttonTextStyle,
              ),
              icon: Icon(FeatherIcons.plus),
            )
          : null,
    );
  }
}

class EventCard extends HookWidget {
  final Event event;
  const EventCard(
    this.event, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final currentEventId = useProvider(currentEventIdProvider);
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 12, bottom: 20),
          child: GestureDetector(
            onTap: () {
              currentEventId.state = event.id;
              Navigator.of(context)
                  .push(CupertinoPageRoute(builder: (ctx) => EventPage()));
            },
            child: AnimatedOpacity(
              duration: Duration(seconds: 1),
              opacity: 1.0,
              child: ListTile(
                tileColor: theme.primaryColor,
                contentPadding: const EdgeInsets.all(10),
                leading: Icon(
                  event.category.icon,
                  color: Colors.white,
                  size: 30,
                ),
                title: Text(
                  event.name,
                  style: buttonBigTextStyle,
                ),
                subtitle: Text(
                  event.description,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: paragraphTextStyle,
                ),
              ),
            ),
          ),
        ),
        Align(
            alignment: Alignment.topRight,
            child: GroupDecisionBox(
              yes: event.yesParticipantIds.length,
              maybe: event.maybeParticipantIds.length,
              no: event.noParticipantIds.length,
            )),
      ],
    );
  }
}

class Avatar extends StatelessWidget {
  final String uri;
  final double? radius;
  final EventDecision? decision;
  const Avatar(
    this.uri, {
    this.decision,
    this.radius,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Stack(
      children: [
        CircleAvatar(
          radius: radius ?? 30,
          backgroundColor: theme.shadowColor,
          child: ClipOval(
            child: CachedNetworkImage(
              imageUrl: uri,
              width: 50,
              height: 50,
            ),
          ),
        ),
        if (decision != null)
          Align(
              alignment: Alignment.topRight,
              child: CircleAvatar(
                backgroundColor: decision!.color,
                radius: 10,
                child: Icon(decision!.icon, size: 16),
              ))
      ],
    );
  }
}

class EventPage extends HookWidget {
  const EventPage();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final myId = useProvider(myUserIdProvider);
    final eventId = useProvider(currentEventIdProvider).state;
    final eventState = useProvider(currentEventProvider);
    final events = useProvider(eventsRepositoryProvider);
    final eventRepository = useProvider(eventsRepositoryProvider.notifier);
    final eventUsers = useProvider(eventUsersRepositoryProvider);
    final eventUsersRepository =
        useProvider(eventUsersRepositoryProvider.notifier);
    final eventSectionItems = useProvider(eventSectionItemsRepositoryProvider);
    final eventSectionItemsRepository =
        useProvider(eventSectionItemsRepositoryProvider.notifier);
    useEffect(() {
      if (events is Events) {
        Future.microtask(() => eventState.state =
            events.events.singleWhereOrNull((e) => e.id == eventId));
      }
      eventUsersRepository.loadUsers();
      eventSectionItemsRepository.loadEventSectionItems();
    }, [eventId]);
    final event = eventState.state;
    if (event == null) {
      return Loader();
    }
    final myDecision = event.participantDecision(myId.state!);
    return Scaffold(
        backgroundColor: theme.backgroundColor,
        body: Stack(
          children: [
            SingleChildScrollView(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(
                      event.backgroundUrl!,
                      fit: BoxFit.cover,
                      alignment: Alignment.bottomRight,
                      height: 250,
                    ),
                    spacer,
                    Row(
                      children: [
                        Expanded(
                          child: Text(
                            event.name,
                            style: titleTextStyle,
                          ),
                        ),
                        if (event.organizerId == myId)
                          IconButton(
                              icon: Icon(
                                FeatherIcons.settings,
                                color: Colors.white,
                                size: 28,
                              ),
                              onPressed: () {}),
                      ],
                    ).padHorizontal(),
                    spacerSmall,
                    EventCategorySection(event.category).padHorizontal(),
                    spacerSmall,
                    Text(
                      event.description,
                      style: paragraphTextStyle,
                    ).padHorizontal(),
                    spacer,
                    SectionTitle(
                      title: 'Participants',
                      actionText: 'Invite',
                      action: myDecision == null ? null : () {},
                    ).padHorizontal(),
                    spacerSmall,
                    eventUsers
                        .maybeMap(
                            (users) => SizedBox(
                                  height: 100,
                                  child: ListView(
                                      shrinkWrap: true,
                                      scrollDirection: Axis.horizontal,
                                      children: users.users
                                          .map((u) => Padding(
                                                padding: const EdgeInsets.only(
                                                    right: 10),
                                                child: Avatar(
                                                  u.avatarUrl!,
                                                  decision:
                                                      event.participantDecision(
                                                          u.id),
                                                ),
                                              ))
                                          .toList()),
                                ),
                            orElse: () => Loader())
                        .padHorizontal(),
                    spacer,
                    ...eventSectionItems.map((value) {
                      final items = <Widget>[];
                      if (value.eventSectionItems
                          .any((element) => element is EventTimeSection)) {
                        final decidedItem = value.eventSectionItems
                            .singleWhereOrNull((e) =>
                                e is EventTimeSection &&
                                e.decision == EventDecision.yes);
                        items.addAll([
                          SectionTitle(
                            title: 'Time',
                            actionText: 'Propose',
                            action: myDecision != null && decidedItem == null
                                ? () {}
                                : null,
                          ).padHorizontal(),
                          spacer,
                          ...(decidedItem != null
                                  ? [decidedItem]
                                  : value.eventSectionItems)
                              .whereType<EventTimeSection>()
                              .map((e) => SectionDecisionBox(event, e))
                        ]);
                      }
                      if (value.eventSectionItems
                          .any((element) => element is EventLocationSection)) {
                        final decidedItem = value.eventSectionItems
                            .singleWhereOrNull((e) =>
                                e is EventLocationSection &&
                                e.decision == EventDecision.yes);
                        items.addAll([
                          SectionTitle(
                            title: 'Location',
                            actionText: 'Propose',
                            action: myDecision != null && decidedItem == null
                                ? () {
                                    showModalBottomSheet(
                                        context: context,
                                        enableDrag: false,
                                        backgroundColor: theme.backgroundColor,
                                        builder: (ctx) =>
                                            LocationSelectionPanel(event));
                                  }
                                : null,
                          ).padHorizontal(),
                          spacer,
                          ...(decidedItem != null
                                  ? [decidedItem]
                                  : value.eventSectionItems)
                              .whereType<EventLocationSection>()
                              .map((e) => SectionDecisionBox(event, e))
                        ]);
                      }
                      if (value.eventSectionItems
                          .any((element) => element is EventLunchSection)) {
                        final decidedItem = value.eventSectionItems
                            .singleWhereOrNull((e) =>
                                e is EventLunchSection &&
                                e.decision == EventDecision.yes);
                        items.addAll([
                          SectionTitle(
                            title: 'Lunch',
                            actionText: 'Propose',
                            action: myDecision != null && decidedItem == null
                                ? () {}
                                : null,
                          ).padHorizontal(),
                          spacer,
                          ...(decidedItem != null
                                  ? [decidedItem]
                                  : value.eventSectionItems)
                              .whereType<EventLunchSection>()
                              .map((e) => SectionDecisionBox(event, e))
                        ]);
                      }
                      if (value.eventSectionItems
                          .any((element) => element is EventDinnerSection)) {
                        final decidedItem = value.eventSectionItems
                            .singleWhereOrNull((e) =>
                                e is EventDinnerSection &&
                                e.decision == EventDecision.yes);
                        items.addAll([
                          SectionTitle(
                            title: 'Dinner',
                            actionText: 'Propose',
                            action: myDecision != null && decidedItem == null
                                ? () {}
                                : null,
                          ).padHorizontal(),
                          spacer,
                          ...(decidedItem != null
                                  ? [decidedItem]
                                  : value.eventSectionItems)
                              .whereType<EventDinnerSection>()
                              .map((e) => SectionDecisionBox(event, e))
                        ]);
                      }
                      return items;
                    },
                        error: (error) => [ErrorLabel(error.error)],
                        loading: (loading) => [Loader()]),
                    spacerHuge,
                    spacerHuge,
                    spacerHuge,
                  ]),
            ),
            BackButton(),
          ],
        ),
        floatingActionButton: Padding(
          padding: const EdgeInsets.only(bottom: 10),
          child: FloatingActionButton.extended(
              onPressed: () async {
                if (myDecision == null) {
                  BotToast.showLoading();
                  if (event.status == EventStatus.upcoming) {
                    await Future.delayed(Duration(seconds: 2), () {
                      BotToast.showText(text: "Request sent");
                    });
                  } else {
                    await eventRepository.joinEvent(event);
                  }
                  BotToast.closeAllLoading();
                  return;
                }
                final decision = await showModalBottomSheet(
                    context: context,
                    backgroundColor: theme.backgroundColor,
                    builder: (ctx) => Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          EventDecision.yes,
                          EventDecision.maybe,
                          EventDecision.no,
                        ]
                            .map(
                              (e) => InkWell(
                                onTap: () {
                                  Navigator.of(ctx).pop(e);
                                },
                                child: SizedBox(
                                  height: 60,
                                  child: ListTile(
                                    leading: Icon(e.icon, color: Colors.white),
                                    title: Text(
                                      e.title,
                                      style: buttonBigTextStyle,
                                    ),
                                  ),
                                ),
                              ),
                            )
                            .toList()));
                if (decision != null) {
                  BotToast.showLoading();
                  await eventRepository.changeEventDecision(event, decision);
                  BotToast.closeAllLoading();
                }
              },
              backgroundColor: myDecision?.color ?? theme.colorScheme.secondary,
              icon: Icon(myDecision?.icon ?? FeatherIcons.userPlus),
              label: Text(myDecision?.longTitle ?? 'I want to join',
                  style: buttonTextStyle)),
        ));
  }
}

class LocationSelectionPanel extends HookWidget {
  final Event event;
  const LocationSelectionPanel(this.event);

  @override
  Widget build(BuildContext context) {
    final initPosition = useState(CameraPosition(
        bearing: 192.8334901395799,
        target: LatLng(47.36667, 8.55),
        zoom: 10.151926040649414));
    final width = MediaQuery.of(context).size.width;
    return Column(mainAxisSize: MainAxisSize.min, children: [
      SizedBox(
        width: width,
        height: width * 0.8,
        child: GoogleMap(
          mapType: MapType.normal,
          initialCameraPosition: initPosition.value,
          onMapCreated: (GoogleMapController controller) {},
        ),
      ),
      spacerSmall,
      ElevatedButton(
        onPressed: () async {},
        child: Text('Confirm'),
      ),
      spacerSmall,
    ]);
  }
}

class BackButton extends StatelessWidget {
  final bool upwards;
  const BackButton({
    Key? key,
    this.upwards = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Align(
      alignment: Alignment.topLeft,
      child: Padding(
        child: SafeArea(
          child: GestureDetector(
            child: Container(
              decoration: BoxDecoration(
                  color: theme.primaryColor,
                  borderRadius: BorderRadius.circular(20)),
              padding:
                  const EdgeInsets.only(left: 5, right: 5, top: 5, bottom: 5),
              child: Text(
                '	${upwards ? '↑' : '←'} Back  ',
                style: buttonTextStyle,
              ),
            ),
            onTap: () {
              Navigator.of(context).pop();
            },
          ),
        ),
        padding: const EdgeInsets.all(15),
      ),
    );
  }
}

class SectionDecisionBox extends HookWidget {
  final Event event;
  final EventSectionItemUnion item;
  const SectionDecisionBox(this.event, this.item);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final slideOpened = useState(false);
    final myId = useProvider(myUserIdProvider);
    final eventsRepository = useProvider(eventsRepositoryProvider.notifier);
    return SlidableNotificationListener(
      onNotification: (notification) {
        if (notification is SlidableRatioNotification) {
          slideOpened.value = notification.ratio != 0.0;
        }
      },
      child: AnimatedOpacity(
        duration: _animationDuration,
        opacity: min(item.opacity + 0.1, 1),
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                bottom: 20,
                top: 14,
              ),
              child: Slidable(
                enabled: event.participantDecision(myId.state!) != null,
                closeOnScroll: true,
                endActionPane: ActionPane(
                  motion: ScrollMotion(),
                  children: EventDecision.values
                      .map(
                        (e) => SlidableAction(
                          onPressed: (ctx) async {
                            BotToast.showLoading();
                            await eventsRepository.changeEventSectionDecision(
                                item, e);
                            BotToast.closeAllLoading();
                          },
                          backgroundColor: e.color,
                          foregroundColor: Colors.white,
                          icon: e.icon,
                        ),
                      )
                      .toList(),
                ),
                child: Container(
                  decoration: BoxDecoration(
                    color: theme.primaryColor.withOpacity(item.opacity),
                  ),
                  child: ListTile(
                    leading: Icon(
                      item.icon,
                      color: Colors.white,
                      size: 34,
                    ),
                    title: Text(item.title, style: buttonBigTextStyle),
                    subtitle: Text(item.subtitle, style: paragraphTextStyle),
                  ),
                ),
              ),
            ),
            AnimatedOpacity(
              opacity: slideOpened.value ? 0 : 1,
              duration: _animationInstantDuration,
              child: Align(
                alignment: Alignment.topRight,
                child: GroupDecisionBox(
                  yes: item.yesParticipantIds.length,
                  maybe: item.maybeParticipantIds.length,
                  no: item.noParticipantIds.length,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SectionTitle extends StatelessWidget {
  final String title;
  final String? actionText;
  final VoidCallback? action;

  const SectionTitle({
    required this.title,
    this.actionText,
    this.action,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Expanded(
        child: Text(
          this.title,
          style: buttonBigTextStyle,
        ),
      ),
      if (actionText != null && action != null)
        OutlinedButton.icon(
            onPressed: action!,
            icon: Icon(Icons.add, size: 18),
            label: Text(actionText!))
    ]);
  }
}

class GroupDecisionBox extends StatelessWidget {
  final int yes;
  final int maybe;
  final int no;
  const GroupDecisionBox({
    required this.yes,
    required this.maybe,
    required this.no,
  });

  Widget _renderDecisionBox(
      BuildContext context, EventDecision decision, int value) {
    return Stack(
      children: [
        Icon(Icons.bookmark, color: decision.color, size: 42),
        Padding(
          padding: const EdgeInsets.only(left: 14, top: 6),
          child: Text(
            value.toString(),
            style: buttonBigTextStyle,
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        _renderDecisionBox(context, EventDecision.yes, yes),
        _renderDecisionBox(context, EventDecision.maybe, maybe),
        _renderDecisionBox(context, EventDecision.no, no),
      ],
    );
  }
}

class EventCategorySection extends StatelessWidget {
  final EventCategory category;
  const EventCategorySection(this.category);

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            border: Border.all(color: Colors.white),
            borderRadius: BorderRadius.circular(10)),
        padding: const EdgeInsets.all(5),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              category.icon,
              color: Colors.white,
              size: 18,
            ),
            SizedBox(width: 5),
            Text(
              category.title,
              style: buttonTextStyle,
            ),
          ],
        ));
  }
}

class ParticipantInvitePanel extends HookWidget {
  @override
  Widget build(BuildContext context) {
    return ListView();
  }
}

class Loader extends StatelessWidget {
  const Loader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: CircularProgressIndicator(
      color: Colors.white,
    ));
  }
}

class ErrorLabel extends StatelessWidget {
  final ErrorResult error;
  ErrorLabel(this.error);

  @override
  Widget build(BuildContext context) {
    return Text(error.message);
  }
}

class NoEventsLabel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Padding(
            padding: const EdgeInsets.only(bottom: 30),
            child: Text('Nothing here',
                style: buttonTextStyle.copyWith(color: Colors.white54))));
  }
}
