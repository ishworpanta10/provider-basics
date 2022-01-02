import 'package:flutter/material.dart';

/// Light Theme data for kaha app.
class AppUserTheme {
  static const Color primary = Color(0xff27AE60);
  static const Color primaryLightShade = Color(0xff6FCF97);
  static const Color primaryDark = Color(0xff16A951);
  static const Color primaryLight = Color(0xff6FCF97);
  static const Color textFieldFillColor = Color(0xFFF2F7FF);
  static const Color cardColor = Color(0xFFeaf2fd);
  static const Color accent = Color(0xff2F80ED);
  static const Color redColor = Color(0xffDD5569);
  static const Color pinkColor = Color(0xFFEE3E71);

  static const Color background = Color(0xffFFFFFF);
  static const Color commentBackground = Color(0xFFF7F4F4);
  static const Color notWhite = Color(0xFFEDF0F2);
  static const Color white = Color(0xFFFFFFFF);
  static const Color nearlyBlue = Color(0xFF00B6F0);
  static const Color nearlyDarkBlue = Color(0xFF2633C5);
  static const Color nearlyBlack = Color(0xff5B5B5B);
  static const Color grey = Color(0xFF3A5160);
  static const Color greyText = Color(0xFF616161);
  static const Color greyChatText = Color(0xFF868686);
  static const Color darkGrey = Color(0xFF313A44);

  static const Color darkText = Color(0xFF253840);
  static const Color darkerText = Color(0xFF17262A);
  static const Color lightText = Color(0xFF4A6572);
  static const Color deactivatedText = Color(0xFF767676);
  static const Color dismissibleBackground = Color(0xFF364A54);
  static const Color chipBackground = Color(0xFFEEF1F3);
  static const Color spacer = Color(0xFFF2F2F2);
  static const Color recentItemText = Color(0xFF454545);
  static const Color ratingColor = Color(0xFFEE9A4D);
  static const Color greenColor = Color(0xff27AE60);
  static const Color buttonColor = Color(0xff989898);
  static const Color unselectedWidgetColor = Color(0xff201B1C);
  static const Color lightGrey = Color(0xff666668);
  static const Color iconThemeColor = Color(0xff5B5B5B);
  static const Color surfaceColor = Color(0xffEFEFF4);
  static const Color onSurfaceColor = Color(0xff97adb6);
  static const Color onSecondaryColor = Color(0xffF8F8F8);
  static const Color disabledColor = Color(0xff7C8F99);
  static const Color error = Color(0xffc5032b);
  static const Color shadowColor = Color(0xff7C8F99);
  static const Color onBackgroundColor = Color(0xff969494);
  static const Color black = Color(0xff070101);
  static const Color captionColor = Color(0xff9D9FA0);

  static ThemeData get appLightTheme => ThemeData(
        brightness: Brightness.light,
        iconTheme: const IconThemeData(
          //DIM blacks
          color: Color(0xff5B5B5B),
        ),
        unselectedWidgetColor: const Color(0xff201B1C),
        //Notification Color
        errorColor: const Color(0xffDD5569),
        splashColor: const Color(0xffFFFFFF),
        // background colors
        backgroundColor: const Color(0xffFFFFFF),
        // Using for shadow with blur 10%,
        scaffoldBackgroundColor: const Color(0xffFFFFFF),
        shadowColor: const Color(0xff7C8F99).withOpacity(0.3),
        cardColor: const Color(0xfff8fafb),
        //C4C4C4),
        disabledColor: const Color(0xff7C8F99),
        floatingActionButtonTheme: FloatingActionButtonThemeData(
          backgroundColor: const Color(0xff2F80ED).withOpacity(0.8),
        ),
        fontFamily: 'Poppins',
        canvasColor: Colors.white,
        textTheme: const TextTheme(
          headline1: TextStyle(
              fontSize: 18.0,
              //Logo Black
              color: Color(0xff201B1C),
              fontFamily: 'Poppins',
              // letterSpacing: 0,
              fontWeight: FontWeight.bold),
          headline2: TextStyle(
              fontSize: 16.0,
              //Black
              color: Color(0xff201B1C),
              fontFamily: 'Poppins',
              // letterSpacing: 0.8,
              fontWeight: FontWeight.normal),
          headline3: TextStyle(
              fontSize: 14.0,
              //Black
              color: Color(0xff201B1C),
              fontFamily: 'Poppins',
              // letterSpacing: 0.8,
              fontWeight: FontWeight.w600),
          headline4: TextStyle(
              fontSize: 14.0,
              //Black
              color: Color(0xff201B1C),
              fontFamily: 'Poppins',
              // letterSpacing: 0.8,
              fontWeight: FontWeight.bold),
          headline5: TextStyle(
              fontSize: 15.0,
              color: Color(0xff201B1C),
              fontFamily: 'Poppins',
              // letterSpacing: 0.8,
              fontWeight: FontWeight.bold),
          headline6: TextStyle(
              fontSize: 13.0,
              //Black
              color: Color(0xff201B1C),
              fontFamily: 'Poppins',
              // letterSpacing: 0.8,
              fontWeight: FontWeight.w700),
          bodyText1: TextStyle(
            color: Color(0xff201B1C),
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w400,
          ),
          bodyText2: TextStyle(
            color: Color(0xff201B1C),
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w400,
          ),
          subtitle1: TextStyle(
            fontSize: 12.0,
            color: Color(0xff201B1C),
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w700,
          ),
          subtitle2: TextStyle(
            fontSize: 12.0,
            color: Color(0xff201B1C),
            fontFamily: 'Poppins',
            fontWeight: FontWeight.normal,
          ),
          caption: TextStyle(
            color: Color(0xff666668),
            fontSize: 12.0,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w300,
          ),
          overline: TextStyle(
            fontSize: 12.0,
            color: Color(0xff5db075),
            fontFamily: 'Poppins',
            letterSpacing: 1.0,
            fontWeight: FontWeight.normal,
          ),
        ),
        colorScheme: const ColorScheme(
          //used as primary for app bars with 100% and 83% gradient opacity
          primary: Color(0xff27AE60),
          // used for everything else primary
          primaryVariant: Color(0xff16A951),
          onPrimary: Color(0xffFFFFFF),
          secondary: Color(0xff2F80ED),
          // Using for shadow with blur 10%
          secondaryVariant: Color(0xff5b5b5b),
          onSecondary: Color(0xffFFFFFF),
          background: Color(0xffFFFFFF),
          // used for received chat message
          onBackground: Color(0xff969494),
          onError: Color(0xffFFFFFF),
          error: Color(0xffc5032b),
          // STROKE COLOR
          surface: Color(0xffEFEFF4),
          //WHITE SMOKE
          onSurface: Color(0xff97adb6),
          brightness: Brightness.light,
        ).copyWith(secondary: const Color(0xff6FCF97)),
      );

  static ThemeData get appDarkTheme => ThemeData(
        disabledColor: const Color(0xff7C8F99),
        brightness: Brightness.dark,
        iconTheme: const IconThemeData(
          color: Color(0xffCECFCF), //FDFAFA),
        ),
        dividerColor: const Color(0xff696A6D),
        floatingActionButtonTheme: FloatingActionButtonThemeData(
          backgroundColor: const Color(0xff2F80ED).withOpacity(0.8),
        ),
        backgroundColor: const Color(0xff0C0D0F),
        scaffoldBackgroundColor: const Color(0xff0C0D0F),
        shadowColor: const Color(0xff696A6D),
        unselectedWidgetColor: const Color(0xff201B1C),
        errorColor: const Color(0xffDD5569),
        colorScheme: const ColorScheme(
          ///used as primary for app bars with 100% and 83% gradient opacity
          primary: Color(0xff27AE60),
          // used for everything else primary// used for everything else primary
          primaryVariant: Color(0xff16A951),
          onPrimary: Color(0xffFFFFFF),
          secondary: Color(0xff2F80ED),
          // Using for shadow with blur 10%
          secondaryVariant: Color(0xff7C8F99),
          onSecondary: Color(0xffF8F8F8),
          background: Color(0xff0C0D0F),
          // used for received chat message
          onBackground: Color(0xff969494),
          onError: Color(0xffFFFFFF),
          error: Color(0xffc5032b),
          onSurface: Color(0xffEEEEEF),
          brightness: Brightness.dark,
          surface: Color(0xff262626),
        ),
        canvasColor: const Color(0xff010101),
        textTheme: const TextTheme(
          headline1: TextStyle(fontSize: 16.0, color: Color(0xffffffff), fontFamily: 'Poppins', fontWeight: FontWeight.bold),
          headline2: TextStyle(fontSize: 16.0, color: Color(0xffB6B6B7), fontFamily: 'Poppins', fontWeight: FontWeight.normal),
          headline3: TextStyle(fontSize: 14.0, color: Color(0xffffffff), fontFamily: 'Poppins', fontWeight: FontWeight.w600),
          headline4: TextStyle(fontSize: 14.0, color: Color(0xffffffff), fontFamily: 'Poppins', fontWeight: FontWeight.bold),
          headline5: TextStyle(fontSize: 15.0, color: Color(0xff010101), fontFamily: 'Poppins', fontWeight: FontWeight.bold),
          headline6: TextStyle(fontSize: 13.0, color: Color(0xffffffff), fontFamily: 'Poppins', fontWeight: FontWeight.w700),
          bodyText1: TextStyle(fontSize: 13.0, color: Color(0xffffffff), fontFamily: 'Poppins', fontWeight: FontWeight.normal),
          subtitle1: TextStyle(fontSize: 12.0, color: Color(0xffffffff), fontFamily: 'Poppins', fontWeight: FontWeight.w700),
          subtitle2: TextStyle(fontSize: 12.0, color: Color(0xffffffff), fontFamily: 'Poppins', fontWeight: FontWeight.normal),
          caption: TextStyle(color: Color(0xff9D9FA0), fontSize: 13.0, fontFamily: 'Poppins', fontWeight: FontWeight.normal),
          bodyText2: TextStyle(fontSize: 13.0, color: Color(0xff5B5B5B), fontFamily: 'Poppins', fontWeight: FontWeight.bold),
          overline: TextStyle(fontSize: 12.0, color: Color(0xff61C7FF), fontFamily: 'Poppins', fontWeight: FontWeight.normal),
        ),
      );
}
