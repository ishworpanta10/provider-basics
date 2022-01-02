import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider_demo/core/constants/z_constants_barrel.dart';

/// Class [ThemeProvider]
/// Manages theme related state logic
class ThemeProvider with ChangeNotifier {
  /// Active theme data
  ThemeData _themeData = AppUserTheme.appLightTheme;

  /// Is app in dark mode
  bool _isDark = false;

  ///getter method for Theme
  bool get isDark => _isDark;

  ///setter method
  set isDark(bool value) {
    _isDark = value;
    notifyListeners();
  }

  /// Method [getTheme]
  /// Gets active theme data
  ThemeData getTheme() => _themeData;

  /// Method [toggleTheme]
  /// Toggles light/dark theme
  void toggleTheme() {
    if (isDark) {
      _themeData = AppUserTheme.appLightTheme;
    } else {
      _themeData = AppUserTheme.appDarkTheme;
    }
    isDark = !isDark;
    // cache();
  }

/*  /// Method [cache]
  /// Caches active theme data
  void cache() async {
    try {
      final configBox = await HiveDbCacheService.box<CachedConfigs>(
        HiveDbCacheService.boxes.CONFIG_BOX,
      );
      await configBox.clear();

      final cachedConfig = CachedConfigs()
        ..language = isNepali ? 'Nepali' : 'English'
        ..mode = isDark ? 'dark' : 'light';

      await configBox.add(cachedConfig);

      await cachedConfig.save();
      unawaited(configBox.close());
    } catch (e) {
      LogUtils.logError(e);
    }
  }

  /// Method [fromCache]
  /// Loads active theme data from cache
  Future<void> fromCache() async {
    try {
      final configBox = await HiveDbCacheService.box<CachedConfigs>(
        HiveDbCacheService.boxes.CONFIG_BOX,
      );
      if (configBox.get(0) != null) {
        final languageType = configBox.get(0).language;
        final themeMode = configBox.get(0).mode;

        if (languageType != null) {
          if (languageType == 'Nepali' && !isNepali) {
            _language = const Locale('ne', 'NP');
            isNepali = true;
          }
        }
        if (themeMode != null) {
          if (themeMode == 'dark' && !isDark) {
            _themeData = KahaUserTheme.kahaDarkTheme;
            ;
            isDark = true;
          }
        }
      }
      await configBox.close();
    } catch (e) {
      LogUtils.logError(e);
    }
  }*/

  /// Method [clearAppStatusBar]
  /// Sets status bar to be clear i.e. white bg with dark icons
  void clearAppStatusBar() {
    SystemChrome.setSystemUIOverlayStyle(clearSystemOverlayStyle);
  }

  /// Method [darkAppStatusBar]
  /// Sets status bar to be dark i.e. black bg with white icons
  void darkAppStatusBar() {
    SystemChrome.setSystemUIOverlayStyle(darkSystemOverlayStyle);
  }

  /// Method [themedAppStatusBar]
  /// Sets status bar to be as per light or dark theme
  void themedAppStatusBar() {
    if (isDark) {
      darkAppStatusBar();
    } else {
      clearAppStatusBar();
    }
  }

  /// Method [errorAppStatusBar]
  /// Sets status bar to be error i.e. red bg with white icons
  void errorAppStatusBar() {
    SystemChrome.setSystemUIOverlayStyle(errorSystemOverlayStyle);
  }

  /// Method [init]
  ///Initializes state data
  Future<void> init() async {
    // await fromCache();
    if (!isDark) {
      _themeData = AppUserTheme.appLightTheme;
      clearAppStatusBar();
    } else {
      _themeData = AppUserTheme.appDarkTheme;
      darkAppStatusBar();
    }
    notifyListeners();
  }

  @override
  Future<void> dispose() async {
    super.dispose();
  }
}

const lightSystemOverlayStyle = SystemUiOverlayStyle(
  // navigation bar color
  systemNavigationBarColor: Color(0xffFFFFFF),
  // status bar color
  statusBarColor: Color(0xff27AE60),
  //status bar brightness
  statusBarBrightness: Brightness.light,
  //status barIcon Brightness
  statusBarIconBrightness: Brightness.dark,
  //navigation bar icon
  systemNavigationBarIconBrightness: Brightness.dark,
);

const clearSystemOverlayStyle = SystemUiOverlayStyle(
  // navigation bar color
  systemNavigationBarColor: Color(0xffFFFFFF),
  // status bar color
  statusBarColor: Colors.transparent,
  //status bar brightness
  statusBarBrightness: Brightness.light,
  //status barIcon Brightness
  statusBarIconBrightness: Brightness.dark,
  //navigation bar icon
  systemNavigationBarIconBrightness: Brightness.dark,
);

const darkSystemOverlayStyle = SystemUiOverlayStyle(
  // navigation bar color
  systemNavigationBarColor: Color(0xff000000),
  // status bar color
  statusBarColor: Colors.transparent,
  //status bar brightness
  statusBarBrightness: Brightness.dark,
  //status barIcon Brightness
  statusBarIconBrightness: Brightness.light,
  //navigation bar icon
  systemNavigationBarIconBrightness: Brightness.light,
);

const errorSystemOverlayStyle = SystemUiOverlayStyle(
  // navigation bar color
  systemNavigationBarColor: Color(0xffFFFFFF),
  // status bar color
  statusBarColor: Color(0xffc5032b),
  //status bar brightness
  statusBarBrightness: Brightness.light,
  //status barIcon Brightness
  statusBarIconBrightness: Brightness.dark,
  //navigation bar icon
  systemNavigationBarIconBrightness: Brightness.dark,
);
