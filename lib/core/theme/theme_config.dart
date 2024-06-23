import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stock_market/core/core.dart';

class ThemeConfigs {
  static ThemeData lightTheme() {
    return ThemeData(
      colorScheme: ColorScheme.fromSwatch(
        backgroundColor: AppColors.backgroundPrimaryLight,
        errorColor: AppColors.negativeLight,
        brightness: Brightness.light,
        primarySwatch: AppColors.primarySwatchLight,
        accentColor: AppColors.accentLight,
        cardColor: AppColors.backgroundSecondaryLight,
      ),
      splashColor: AppColors.backgroundAccentLight,
      scaffoldBackgroundColor: AppColors.backgroundPrimaryLight,
      extensions: const [CustomThemeExtension.lightMode],
      appBarTheme: AppBarTheme(
        backgroundColor: AppColors.backgroundPrimaryLight,
        surfaceTintColor: AppColors.transparent,
        iconTheme: IconThemeData(
          color: AppColors.contentPrimaryLight,
          size: 24.adaptSize,
        ),
      ),
      hintColor: Colors.grey.shade500,
      tabBarTheme: TabBarTheme(
        labelStyle: TextStyle(
          fontSize: 16.fSize,
          fontWeight: FontWeight.w500,
        ),
        unselectedLabelStyle: TextStyle(
          fontSize: 16.fSize,
          fontWeight: FontWeight.w400,
        ),
        labelColor: AppColors.contentPrimaryLight,
        unselectedLabelColor: AppColors.contentSecondaryLight,
        indicatorSize: TabBarIndicatorSize.tab,
        labelPadding: EdgeInsets.only(top: 6.v, left: 12.h, right: 12.h),
        tabAlignment: TabAlignment.start,
        indicator: const UnderlineTabIndicator(
          borderSide: BorderSide(
            color: AppColors.accentLight,
            width: 2,
            strokeAlign: 1.5,
          ),
        ),
        dividerColor: AppColors.transparent,
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.accentLight,
          foregroundColor: AppColors.backgroundInverserPrimaryLight,
          splashFactory: NoSplash.splashFactory,
          elevation: 0,
          shadowColor: AppColors.transparent,
        ),
      ),
      bottomSheetTheme: const BottomSheetThemeData(
        backgroundColor: AppColors.backgroundPrimaryLight,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(20),
          ),
        ),
        surfaceTintColor: AppColors.transparent,
      ),
      dialogBackgroundColor: AppColors.backgroundPrimaryLight,
      dialogTheme: DialogTheme(
        surfaceTintColor: AppColors.backgroundPrimaryDark,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
        backgroundColor: AppColors.accentLight,
        foregroundColor: Colors.white,
      ),
      listTileTheme: const ListTileThemeData(
        iconColor: AppColors.borderOpaqueLight,
        tileColor: AppColors.backgroundPrimaryLight,
      ),
      switchTheme: const SwitchThemeData(
        thumbColor: WidgetStatePropertyAll(Color(0xFF83939C)),
        trackColor: WidgetStatePropertyAll(Color(0xFFDADFE2)),
      ),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        backgroundColor: AppColors.backgroundPrimaryLight,
      ),
      textTheme: GoogleFonts.figtreeTextTheme(),
      navigationBarTheme: NavigationBarThemeData(
        indicatorColor: AppColors.backgroundAccentLight,
        labelTextStyle: WidgetStatePropertyAll(
          TextStyle(fontSize: 12.fSize),
        ),
        backgroundColor: AppColors.backgroundPrimaryLight,
        surfaceTintColor: AppColors.backgroundPrimaryLight,
      ),
    );
  }

  static ThemeData darkTheme() {
    return ThemeData(
      colorScheme: ColorScheme.fromSwatch(
        backgroundColor: AppColors.backgroundPrimaryDark,
        errorColor: AppColors.negativeDark,
        brightness: Brightness.dark,
        primarySwatch: AppColors.primarySwatchDark,
        accentColor: AppColors.accentDark,
        cardColor: AppColors.backgroundSecondaryDark,
      ),
      scaffoldBackgroundColor: AppColors.backgroundPrimaryDark,
      splashColor: AppColors.backgroundAccentDark,
      extensions: const [CustomThemeExtension.darkMode],
      appBarTheme: AppBarTheme(
        backgroundColor: AppColors.backgroundPrimaryDark,
        surfaceTintColor: AppColors.transparent,
        // titleTextStyle: TextStyle(
        //   fontSize: 18,
        //   fontWeight: FontWeight.w600,
        //   color: AppColors.contentPrimaryDark,
        // ),
        // systemOverlayStyle: const SystemUiOverlayStyle(
        //   // Status bar color
        //   statusBarColor: AppColors.transparent,

        //   // Status bar brightness (optional)
        //   statusBarIconBrightness: Brightness.dark, // For Android (dark icons)
        //   statusBarBrightness: Brightness.light, // For iOS (dark icons)
        // ),
        iconTheme: IconThemeData(
          color: AppColors.contentPrimaryDark,
          size: 24.adaptSize,
        ),
      ),
      hintColor: AppColors.contentTeritiaryDark,
      tabBarTheme: TabBarTheme(
        labelStyle: TextStyle(
          fontSize: 16.fSize,
          fontWeight: FontWeight.w500,
        ),
        unselectedLabelStyle: TextStyle(
          fontSize: 16.fSize,
          fontWeight: FontWeight.w400,
        ),
        labelColor: AppColors.contentPrimaryDark,
        unselectedLabelColor: AppColors.contentSecondaryDark,
        overlayColor: const WidgetStatePropertyAll(AppColors.transparent),
        labelPadding: EdgeInsets.only(top: 6.v, left: 12.h, right: 12.h),
        tabAlignment: TabAlignment.start,
        splashFactory: NoSplash.splashFactory,
        indicatorSize: TabBarIndicatorSize.tab,
        indicator: const UnderlineTabIndicator(
          borderSide: BorderSide(
            color: AppColors.accentDark,
            width: 2,
            strokeAlign: 1.5,
          ),
        ),
        dividerColor: AppColors.transparent,
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.accentDark,
          foregroundColor: AppColors.backgroundInverserPrimaryDark,
          splashFactory: NoSplash.splashFactory,
          elevation: 0,
          shadowColor: AppColors.transparent,
        ),
      ),
      bottomSheetTheme: const BottomSheetThemeData(
        backgroundColor: AppColors.backgroundPrimaryDark,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(20),
          ),
        ),
        surfaceTintColor: AppColors.transparent,
      ),
      dialogBackgroundColor: AppColors.backgroundPrimaryDark,
      dialogTheme: DialogTheme(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
        backgroundColor: AppColors.accentDark,
        foregroundColor: Colors.white,
      ),
      listTileTheme: const ListTileThemeData(
        iconColor: AppColors.borderOpaqueDark,
        tileColor: AppColors.backgroundPrimaryDark,
      ),
      switchTheme: const SwitchThemeData(
        thumbColor: WidgetStatePropertyAll(Color(0xFF83939C)),
        trackColor: WidgetStatePropertyAll(Color(0xFFDADFE2)),
      ),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        backgroundColor: AppColors.backgroundPrimaryDark,
      ),
      textTheme: GoogleFonts.figtreeTextTheme(),
      navigationBarTheme: NavigationBarThemeData(
        backgroundColor: AppColors.backgroundPrimaryDark,
        labelTextStyle: WidgetStatePropertyAll(
          TextStyle(fontSize: 12.fSize),
        ),
        indicatorColor: AppColors.backgroundAccentDark,
        surfaceTintColor: AppColors.backgroundPrimaryDark,
      ),
    );
  }
}
