import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final themeData = ThemeData(
  primarySwatch: Colors.brown,
  colorScheme: ColorScheme.fromSwatch(
    accentColor: Colors.purple,
  ),
  buttonTheme: ButtonThemeData(
    buttonColor: Colors.purple,
    shape: RoundedRectangleBorder(),
    textTheme: ButtonTextTheme.accent,
  ),
  textButtonTheme: TextButtonThemeData(
    style: TextButton.styleFrom(
      primary: Colors.white,
    ),
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      primary: Colors.purple,
    ),
  ),
  outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
          primary: Colors.white,
          side: BorderSide(color: Colors.white, width: 2),
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(10))))),
  textTheme: GoogleFonts.bungeeTextTheme(),
  backgroundColor: Colors.blueGrey[900],
  shadowColor: Colors.black87,
);

const spacerSmall = SizedBox(height: 10);
const spacer = SizedBox(height: 20);
const spacerBig = SizedBox(height: 40);
const spacerHuge = SizedBox(height: 60);

const buttonTextStyle = TextStyle(fontSize: 16, color: Colors.white);
final paragraphTextStyle = GoogleFonts.montserrat()
    .copyWith(fontSize: 18, color: Colors.white, fontWeight: FontWeight.w100);
final buttonBigTextStyle = buttonTextStyle.copyWith(fontSize: 20);
final titleTextStyle = buttonTextStyle.copyWith(fontSize: 36);
final subtitleTextStyle = buttonTextStyle.copyWith(fontSize: 28);

extension PaddingExtension on Widget {
  Widget padHorizontal([double size = 20]) =>
      Padding(padding: EdgeInsets.symmetric(horizontal: size), child: this);
  Widget padTop([double size = 20]) =>
      Padding(padding: EdgeInsets.only(top: size), child: this);
}
