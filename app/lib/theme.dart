import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final themeData = ThemeData(
  primarySwatch: Colors.brown,
  accentColor: Colors.teal,
  textTheme: GoogleFonts.bungeeTextTheme(),
  backgroundColor: Colors.blueGrey[900],
  shadowColor: Colors.black87,
  cardColor: Colors.black54,
);

const spacerSmall = SizedBox(height: 10);
const spacer = SizedBox(height: 20);
const spacerBig = SizedBox(height: 40);
const spacerHuge = SizedBox(height: 60);

const buttonTextStyle = TextStyle(fontSize: 16, color: Colors.white);
final buttonBigTextStyle = buttonTextStyle.copyWith(fontSize: 20);
final titleTextStyle = buttonTextStyle.copyWith(fontSize: 36);
final subtitleTextStyle = buttonTextStyle.copyWith(fontSize: 28);

extension PaddingExtension on Widget {
  Widget padHorizontal([double size = 20]) =>
      Padding(padding: EdgeInsets.symmetric(horizontal: size), child: this);
}
