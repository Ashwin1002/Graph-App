import 'package:flutter/material.dart';

class AppColors {
  AppColors._();

  /// Shimmer Color
  static const shimmerBaseColor = Color(0xFFE0E0E0);
  static const shimmerHighlightColor = Color(0xFFEEEEEE);

  ///Foundation Light
  static const Color primaryLightA = Color(0xff030918);
  static const Color primaryLightB = Color(0xffF0F0F2);

  static const Color accentLight = Color(0xff27ABF1);
  static const Color warningLight = Color(0xffFFC043);

  static const Color positiveLight = Color(0xff4caf50);
  static const Color negativeLight = Color(0xffE11900);

  ///Background Light
  static const Color backgroundPrimaryLight = Color(0xffFFFFFF);
  static const Color backgroundInverserPrimaryLight = Color(0xff030918);

  static const Color backgroundSecondaryLight = Color(0xffF8F8F8);
  static const Color backgroundInverserSecondaryLight = Color(0xff353A46);

  static const Color backgroundTeritiaryLight = Color(0xffDFDFDF);
  static const Color backgroundAccentLight = Color(0xffD4EEFC);

  ///Content light
  static const Color contentPrimaryLight = Color(0xff030918);
  static const Color contentInversePrimaryLight = Color(0xffFFFFFF);

  static const Color contentSecondaryLight = Color(0xff686B74);
  static const Color contentInverseSecondaryLight = Color(0xffCDCED1);

  static const Color contentTeritiaryLight = Color(0xff9A9DA3);
  static const Color contentInverseTeritiaryLight = Color(0xff9A9DA3);

  ///border light
  static const Color borderOpaqueLight = Color(0xffB3B5BA);
  static const Color borderInverseOpaqueLight = Color(0xff686B74);

  static const Color borderSelectedLight = Color(0xff27ABF1);
  static const Color borderInverseSelectedLight = Color(0xffFFFFFF);

  /// foundation dark
  static const Color primaryDarkA = Color(0xffE6E6E8);
  static const Color primaryDarkB = Color(0xff353A46);

  static const Color accentDark = Color(0xff77C4F4);
  static const Color warningDark = Color(0xffF6DE6B);

  static const Color positiveDark = Color(0xff087f23);
  static const Color negativeDark = Color(0xffF47C95);

  ///Background Dark
  static const Color backgroundPrimaryDark = Color(0xff23262E);
  static const Color backgroundInverserPrimaryDark = Color(0xffE6E6E8);

  static const Color backgroundSecondaryDark = Color(0xff1D212B);
  static const Color backgroundInverserSecondaryDark = Color(0xffB3B5BA);

  static const Color backgroundTeritiaryDark = Color(0xffB3B5BA);
  static const Color backgroundAccentDark = Color(0xff1A2E44);

  ///Content Dark
  static const Color contentPrimaryDark = Color(0xffFFFFFF);
  static const Color contentInversePrimaryDark = Color(0xff091022);

  static const Color contentSecondaryDark = Color(0xffCDCED1);
  static const Color contentInverseSecondaryDark = Color(0xffB3B5BA);

  static const Color contentTeritiaryDark = Color(0xff9A9DA3);
  static const Color contentInverseTeritiaryDark = Color(0xffB3B5BA);

  ///border Dark
  static const Color borderOpaqueDark = Color(0xffB3B5BA);
  static const Color borderInverseOpaqueDark = Color(0xffB3B5BA);

  static const Color borderSelectedDark = Color(0xff77C4F4);
  static const Color borderInverseSelectedDark = Color(0xff353A46);

  static const Color backgroundSuccessLight = Color(0xffE6F6EE);
  static const Color backgroundSuccessDark = Color(0xff2E5E47);

  static const Color backgroundErrorLight = Color(0xffF9D1CC);
  static const Color backgroundErrorDark = Color(0xff332031);

  static const Color backgroundWarningLight = Color(0xffFFF2D9);
  static const Color backgroundWarningDark = Color(0xff473F18);

  static const Color controlsOverlayLight = Color(0xff1F2A37);
  static const Color controlsOverlayDark = Color(0xff1F2A37);

  static const MaterialColor primarySwatchLight = MaterialColor(
    0xFF2BB8D6,
    <int, Color>{
      50: Color.fromRGBO(43, 184, 214, .1),
      100: Color.fromRGBO(43, 184, 214, .2),
      200: Color.fromRGBO(43, 184, 214, .3),
      300: Color.fromRGBO(43, 184, 214, .4),
      400: Color.fromRGBO(43, 184, 214, .5),
      500: Color.fromRGBO(43, 184, 214, .6),
      600: Color.fromRGBO(43, 184, 214, .7),
      700: Color.fromRGBO(43, 184, 214, .8),
      800: Color.fromRGBO(43, 184, 214, .9),
      900: Color.fromRGBO(43, 184, 214, 1),
    },
  );

  static const MaterialColor primarySwatchDark = MaterialColor(
    0xFF2BB8D6,
    <int, Color>{
      50: Color.fromRGBO(119, 196, 244, .1),
      100: Color.fromRGBO(119, 196, 244, .2),
      200: Color.fromRGBO(119, 196, 244, .3),
      300: Color.fromRGBO(119, 196, 244, .4),
      400: Color.fromRGBO(119, 196, 244, .5),
      500: Color.fromRGBO(119, 196, 244, .6),
      600: Color.fromRGBO(119, 196, 244, .7),
      700: Color.fromRGBO(119, 196, 244, .8),
      800: Color.fromRGBO(119, 196, 244, .9),
      900: Color.fromRGBO(119, 196, 244, 1),
    },
  );

  static const Color transparent = Color(0x00000000);
}
