import 'dart:math';

import 'package:app/theme.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import "package:flutter_feather_icons/flutter_feather_icons.dart";
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:pinput/pin_put/pin_put.dart';
import 'package:speech_to_text/speech_recognition_result.dart';
import 'package:speech_to_text/speech_to_text.dart' as stt;
import 'package:lottie/lottie.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

import 'model.dart';
import 'page_routing.dart';

void main() {
  runApp(MyApp());
}

const _animationDuration = Duration(seconds: 1);
const _animationInstantDuration = Duration(milliseconds: 200);

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: themeData,
      home: CommunityPage(),
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
    return Scaffold(
      backgroundColor: theme.backgroundColor,
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  'assets/images/hz_rainycity.gif',
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
                            'Cyber city 2099',
                            style: titleTextStyle,
                          ),
                          Text(
                            'Company AG',
                            style: buttonTextStyle,
                          ),
                        ],
                      ),
                    ),
                  ],
                ).padHorizontal(),
                spacerBig,
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Align(
                      child: Text(
                        '7 members',
                        style: buttonBigTextStyle,
                      ),
                      alignment: Alignment.topLeft,
                    ),
                    SizedBox(
                      height: 100,
                      child: ListView(
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        children: [
                          ...List.generate(
                            7,
                            (index) => Padding(
                              padding: const EdgeInsets.only(right: 10),
                              child: Avatar(
                                  'https://gravatar.com/avatar/39e719c84bd32b56241c7ffccd559aa6?s=400&d=robohash&r=x'),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ).padHorizontal(),
                spacer,
                Text(
                  '4 Upcoming quests',
                  style: buttonBigTextStyle,
                ).padHorizontal(),
                spacer,
                Column(
                  children: List.generate(
                    4,
                    (index) => Stack(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 12, bottom: 20),
                          child: GestureDetector(
                            onTap: () {
                              Navigator.of(context).push(SlideRightLeftRoute(
                                enterWidget: EventPage(),
                                oldWidget: this,
                              ));
                            },
                            child: ListTile(
                              tileColor: theme.primaryColor,
                              contentPadding: const EdgeInsets.all(10),
                              leading: Icon(
                                FeatherIcons.codesandbox,
                                color: Colors.white,
                                size: 30,
                              ),
                              title: Text(
                                'Mini POC hackathon',
                                style: buttonBigTextStyle,
                              ),
                              subtitle: Text(
                                'Let\'s get together to build a PoC of the awesome ML framework.',
                                style: paragraphTextStyle,
                              ),
                            ),
                          ),
                        ),
                        Align(
                            alignment: Alignment.topRight,
                            child: GroupDecisionBox(yes: 4, maybe: 1, no: 0)),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          BackButton(),
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {},
        label: Text(
          'Create a quest',
          style: buttonTextStyle,
        ),
        icon: Icon(FeatherIcons.plus),
      ),
    );
  }
}

class Avatar extends StatelessWidget {
  final String uri;
  const Avatar(
    this.uri, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return CircleAvatar(
      radius: 30,
      backgroundColor: theme.shadowColor,
      child: CachedNetworkImage(
        imageUrl: uri,
      ),
    );
  }
}

class EventPage extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
        backgroundColor: theme.backgroundColor,
        body: Stack(
          children: [
            SingleChildScrollView(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(
                      'assets/images/hz_roadtrip.gif',
                      fit: BoxFit.cover,
                      alignment: Alignment.bottomRight,
                      height: 250,
                    ),
                    spacer,
                    Row(
                      children: [
                        Expanded(
                          child: Text(
                            'Go for a hike',
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
                      'Let\'s go for an short Via ferrata hike near Zürich.',
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
                    Avatar('https://gravatar.com/avatar/39e719c84bd32b56241c7ffccd559aa6?s=400&d=robohash&r=x')
                        .padHorizontal(),
                    spacer,
                    SectionTitle(
                      title: 'Time',
                      actionText: 'Propose',
                      action: () {},
                    ).padHorizontal(),
                    spacer,
                    SectionDecisionBox(EventSectionItemUnion.time(
                      type: 'time',
                      decision: EventDecision.maybe,
                      title: 'Sat 12, Oct 2021',
                      subtitle: '09:00 - 16:00',
                      yesParticipantIds: ['', '', ''],
                      maybeParticipantIds: [
                        '',
                        '',
                      ],
                      noParticipantIds: [],
                    )),
                    spacerSmall,
                    SectionDecisionBox(EventSectionItemUnion.time(
                      type: 'time',
                      decision: EventDecision.maybe,
                      title: 'Sun 13, Oct 2021',
                      subtitle: '09:00 - 16:00',
                      yesParticipantIds: ['', '', ''],
                      maybeParticipantIds: [
                        '',
                      ],
                      noParticipantIds: [],
                    )),
                    spacer,
                    SectionTitle(
                      title: 'Location',
                      actionText: 'Propose',
                      action: () {},
                    ).padHorizontal(),
                    spacer,
                    SectionDecisionBox(EventSectionItemUnion.location(
                      type: 'location',
                      decision: EventDecision.maybe,
                      title: 'Melchsee-Frutt',
                      subtitle: 'Sarnerstrasse 1, 6064 Kerns',
                      yesParticipantIds: ['', '', ''],
                      maybeParticipantIds: [
                        '',
                      ],
                      noParticipantIds: [],
                    )),
                    spacer,
                    SectionTitle(
                      title: 'Lunch',
                      actionText: 'Propose',
                      action: null,
                    ).padHorizontal(),
                    spacer,
                    SectionDecisionBox(EventSectionItemUnion.lunch(
                      type: 'lunch',
                      decision: EventDecision.yes,
                      title: 'Bring own food',
                      subtitle: 'Bring your own food and share',
                      yesParticipantIds: ['', '', ''],
                      maybeParticipantIds: [],
                      noParticipantIds: [],
                    )),
                    spacer,
                    SectionTitle(
                      title: 'Dinner',
                      actionText: 'Propose',
                      action: null,
                    ).padHorizontal(),
                    spacer,
                    SectionDecisionBox(EventSectionItemUnion.dinner(
                      type: 'dinner',
                      decision: EventDecision.yes,
                      title: 'Dieci pizza',
                      subtitle: 'Eibenstrasse 24, 8045 Zürich',
                      yesParticipantIds: ['', '', ''],
                      maybeParticipantIds: [],
                      noParticipantIds: [],
                    )),
                    spacer,
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
            icon: Icon(MdiIcons.progressQuestion),
            label: Text('Maybe going', style: buttonTextStyle)));
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
