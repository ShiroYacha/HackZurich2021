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
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:pinput/pin_put/pin_put.dart';
import 'package:speech_to_text/speech_recognition_result.dart';
import 'package:speech_to_text/speech_to_text.dart' as stt;
import 'package:lottie/lottie.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

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
          .overrideWithValue(StateController('community1'))
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
      home: me.state != null ? CommunityPage() : Loader(),
    );
  }
}

class HomePage extends HookWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Image.asset(
        'assets/images/hz_background.gif',
        fit: BoxFit.cover,
        height: 1500,
      ),
      floatingActionButton: Padding(
        child: FloatingActionButton.extended(
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
    final codeFound = useState(false);

    final speechAnimController = useAnimationController();
    final speechMicAnimController = useAnimationController();
    final speech = useMemoized(() => stt.SpeechToText());
    final speechEnabled = useState(false);
    final speechRecording = useState(false);
    final speechMagicWordFound = useState(false);
    useEffect(() {
      if (codeFound.value) {
        speech.initialize().then((value) {
          speechEnabled.value = value;
        });
      } else {
        codeFocusNode.requestFocus();
      }
      return;
    }, [codeFound.value]);
    void _onSpeechResult(
      SpeechRecognitionResult result,
    ) {
      print(result.recognizedWords);
      final theme = Theme.of(context);
      if (!speechMagicWordFound.value &&
          result.recognizedWords.toLowerCase() == 'red pill'.toLowerCase()) {
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
                        onPressed: () {
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
                      codeFound.value ? 'Your code' : 'Enter your code',
                      style: buttonBigTextStyle,
                    ),
                    spacer,
                    PinPut(
                      fieldsCount: 5,
                      onSubmit: (String pin) {
                        codeFocusNode.unfocus();
                        Future.delayed(Duration(seconds: 1), () {
                          codeFound.value = true;
                        });
                      },
                      enabled: !codeFound.value,
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
                    if (codeFound.value)
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
                          speechRecording.value = true;
                          speech.listen(onResult: _onSpeechResult);
                        },
                        onTapUp: (detail) {
                          speechRecording.value = false;
                          speech.stop();
                        },
                      ),
                    spacerBig,
                    AnimatedOpacity(
                      opacity: codeFound.value ? 1 : 0,
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
                    ];
                  }, orElse: () => [Loader()]),
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
                  .push(CupertinoPageRoute(builder: (ctx) => EventPage(event)));
            },
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
  final EventDecision? decision;
  const Avatar(
    this.uri, {
    this.decision,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Stack(
      children: [
        CircleAvatar(
          radius: 30,
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
  final Event event;
  const EventPage(this.event);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final myId = useProvider(myUserIdProvider);
    final eventUsers = useProvider(eventUsersRepositoryProvider);
    final eventUsersRepository =
        useProvider(eventUsersRepositoryProvider.notifier);
    final eventSectionItems = useProvider(eventSectionItemsRepositoryProvider);
    final eventSectionItemsRepository =
        useProvider(eventSectionItemsRepositoryProvider.notifier);
    useEffect(() {
      eventUsersRepository.loadUsers();
      eventSectionItemsRepository.loadEventSectionItems();
    }, [event]);

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
                    EventCategorySection(EventCategory.hiking).padHorizontal(),
                    spacerSmall,
                    Text(
                      event.description,
                      style: paragraphTextStyle,
                    ).padHorizontal(),
                    spacer,
                    SectionTitle(
                      title: 'Participants',
                      actionText: 'Invite',
                      action: () {
                        showModalBottomSheet(
                            context: context,
                            backgroundColor: theme.backgroundColor,
                            builder: (ctx) => ParticipantInvitePanel());
                      },
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
                            action: decidedItem == null ? () {} : null,
                          ).padHorizontal(),
                          spacer,
                          ...(decidedItem != null
                                  ? [decidedItem]
                                  : value.eventSectionItems)
                              .whereType<EventTimeSection>()
                              .map((e) => SectionDecisionBox(e))
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
                            action: decidedItem == null ? () {} : null,
                          ).padHorizontal(),
                          spacer,
                          ...(decidedItem != null
                                  ? [decidedItem]
                                  : value.eventSectionItems)
                              .whereType<EventLocationSection>()
                              .map((e) => SectionDecisionBox(e))
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
                            action: decidedItem == null ? () {} : null,
                          ).padHorizontal(),
                          spacer,
                          ...(decidedItem != null
                                  ? [decidedItem]
                                  : value.eventSectionItems)
                              .whereType<EventLunchSection>()
                              .map((e) => SectionDecisionBox(e))
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
                            action: decidedItem == null ? () {} : null,
                          ).padHorizontal(),
                          spacer,
                          ...(decidedItem != null
                                  ? [decidedItem]
                                  : value.eventSectionItems)
                              .whereType<EventDinnerSection>()
                              .map((e) => SectionDecisionBox(e))
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
        floatingActionButton: FloatingActionButton.extended(
            onPressed: () {
              showModalBottomSheet(
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
                              onTap: () {},
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
            },
            backgroundColor: myDecision?.color ?? theme.colorScheme.secondary,
            icon: Icon(myDecision?.icon ?? FeatherIcons.userPlus),
            label: Text(myDecision?.longTitle ?? 'I want to join',
                style: buttonTextStyle)));
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
                  const EdgeInsets.only(left: 5, right: 5, top: 2, bottom: 5),
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
  final EventSectionItemUnion item;
  const SectionDecisionBox(this.item);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final slideOpened = useState(false);
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
                closeOnScroll: true,
                endActionPane: ActionPane(
                  motion: ScrollMotion(),
                  children: EventDecision.values
                      .map(
                        (e) => SlidableAction(
                          onPressed: (ctx) {},
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
