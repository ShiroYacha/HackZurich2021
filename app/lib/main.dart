import 'package:app/theme.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import "package:flutter_feather_icons/flutter_feather_icons.dart";
import 'package:pinput/pin_put/pin_put.dart';
import 'package:speech_to_text/speech_recognition_result.dart';
import 'package:speech_to_text/speech_to_text.dart' as stt;
import 'package:lottie/lottie.dart';

import 'page_routing.dart';

void main() {
  runApp(MyApp());
}

class BackButton extends StatelessWidget {
  final bool upwards;
  const BackButton({
    Key key,
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

    final codeController = useTextEditingController();
    final codeFocusNode = useFocusNode();
    final codeDecoration = BoxDecoration(
      border: Border.all(color: theme.accentColor, width: 5),
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
          result.recognizedWords.toLowerCase() == 'cupcake'.toLowerCase()) {
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
                        color: theme.accentColor,
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
                          backgroundColor: theme.accentColor,
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
                      duration: const Duration(seconds: 1),
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
                spacer,
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Align(
                      child: Text(
                        '7 members',
                        style: buttonTextStyle,
                      ),
                      alignment: Alignment.centerRight,
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
                                    child: CircleAvatar(
                                      radius: 30,
                                      backgroundColor: theme.shadowColor,
                                      child: CachedNetworkImage(
                                        imageUrl:
                                            'https://gravatar.com/avatar/39e719c84bd32b56241c7ffccd559aa6?s=400&d=robohash&r=x',
                                      ),
                                    ),
                                  )),
                        ],
                      ),
                    ),
                  ],
                ).padHorizontal(),
                spacer,
                Align(
                  child: Text(
                    'Bounty list',
                    style: buttonTextStyle,
                  ),
                  alignment: Alignment.centerRight,
                ).padHorizontal(),
                spacer,
                Column(
                  children: [
                    ListTile(
                        tileColor: theme.cardColor,
                        title: Text(
                          'Mini POC hackathon',
                          style: buttonBigTextStyle,
                        )),
                  ],
                ),
              ],
            ),
          ),
          BackButton(),
        ],
      ),
    );
  }
}
