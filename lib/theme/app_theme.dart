import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AppTheme {
  static final light = ThemeData.light().copyWith(
      scaffoldBackgroundColor: Colors.white,
      colorScheme: lightColorScheme,
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            foregroundColor: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(6.0),
            ),
          )),
      appBarTheme: const AppBarTheme(
          backgroundColor: primaryColor,
          iconTheme: IconThemeData(color: Colors.white),
          actionsIconTheme: IconThemeData(color: Colors.white),
          systemOverlayStyle:
          SystemUiOverlayStyle(statusBarColor: Colors.transparent),
          centerTitle: true,
          elevation: 0,
          titleTextStyle: TextStyle(color: Colors.white)));

  static final dark = ThemeData.dark().copyWith(
      scaffoldBackgroundColor: Colors.black,
      colorScheme: darkColorScheme,
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            foregroundColor: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(6.0),
            ),
          )),
      appBarTheme: const AppBarTheme(
          backgroundColor: primaryColor,
          iconTheme: IconThemeData(color: Colors.white),
          actionsIconTheme: IconThemeData(color: Colors.white),
          systemOverlayStyle:
          SystemUiOverlayStyle(statusBarColor: Colors.transparent),
          centerTitle: true,
          elevation: 0,
          titleTextStyle: TextStyle(color: Colors.white)));

  static const ColorScheme lightColorScheme = ColorScheme(
    primary: primaryColor,
    primaryContainer: Color(0xFF640AFF),
    secondary: Color(0xFF03DAC5),
    secondaryContainer: Color(0xFF0AE1C5),
    background: Color(0xFFE6EBEB),
    surface: Color(0xFFFAFBFB),
    onBackground: Colors.white,
    error: Colors.red,
    onError: Colors.white,
    onPrimary: Colors.white,
    onSecondary: Color(0xFF322942),
    onSurface: Color(0xFF241E30),
    brightness: Brightness.light,
  );

  static const ColorScheme darkColorScheme = ColorScheme(
    primary: primaryColor,
    primaryContainer: Color(0xFF640AFF),
    secondary: Color(0xFF03DAC5),
    secondaryContainer: Color(0xFF0AE1C5),
    background: Color(0xFF242424),
    surface: Color(0xFF151515),
    onBackground: Colors.black,
    error: Colors.red,
    onError: Colors.white,
    onPrimary: Colors.white,
    onSecondary: Color(0xFFD3D2E6),
    onSurface: Color(0xFFC9C7DB),
    brightness: Brightness.dark,
  );

  // Text Colors
  static const Color primaryTextColor = Color(0xFFFFFFFF);
  static const Color secondaryTextColor = Color(0xff757575);
  static const Color tertiaryTextColor = Color(0xff909090);
  static const Color subheadingTextColor = Color(0xff77838f);
  static const Color hiddenTextColor = Color(0xff959595);
  static const Color hintTextGray = Color(0xff7E7E7E);
  static const Color hintDarkGray = Color(0xff8F8F8F);

  static const Color primaryColor = Color(0xFF8684d1);
  static const Color whiteBackground = Color(0xfff8f7f7);
  static const Color borderColor = Color(0xffe8e8e8);
  static const Color lightGray = Color(0xffceced2);
  static const Color lightPurple = Color(0xff9b89d0);
  static const Color darkPurple = Color(0xff8083d2);
  static const Color coral = Color(0xfffe604d);
  static const Color paleGray = Color(0xffe3e4ea);
  static const Color starYellowColor = Color(0xffe8c433);
  static const Color blackColor = Color(0xFF000000);
  static const Color melonColor = Color(0xD2F5445E);
  static const Color coralFlowerColor = Color(0xff5d77dd);
  static const Color coralFlowColor = Color(0xff8977e8);
  static const Color darkPeriBlue = Color(0xff6168dc);
  static const Color meetingGreen = Color(0xff61b50e);
  static const Color meetingBlue = Color(0xff9587d0);
  static const Color meetingOrange = Color(0xffffb34d);
  static const Color meetingLit = Color(0xffa2a2a2);
  static const Color meetingRed = Color(0xffFF0000);
  static const Color warmGrey = Color(0xff8f8f8f);
  static const Color greyd4d4d4 = Color(0xffd4d4d4);
  static const Color darkBrown = Color(0xff2e2321);
  static const Color darkBlack = Color(0xff060608);
  static const Color lightBlack = Color(0xff58585a);
  static const Color deepLilac = Color(0xff8383d1);
  static const Color greyishBrown = Color(0xff535353);
  static const Color brownishGrey = Color(0xff676767);
  static const Color audioBarColor = Color(0xffcecece);
  static const Color dateColor = Color(0xff9f9f9f);
  static const Color dartNavyBlue = Color(0xff212239);
  static const Color playerBorder = Color(0xff707070);
  static const Color deleteIconColor = Color(0xff969696);
  static const Color tabIconColor = Color(0xffADADDC);
  static const Color dividerColor = Color(0xffdfdfdf);
  static const Color itemSelected = Color(0xffECECFC);
}