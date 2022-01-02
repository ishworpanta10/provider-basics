import 'package:flutter/widgets.dart';

import '../constants/urls.dart';

/// Utils [LogUtils] : The LogUtils is used for printing on dev environment only with color codes
class LogUtils {
  static const String developmentEnv = isProduction ? 'prod' : 'dev';

  ///FUNC [logGeneral] : Logging General Messages
  static void logGeneral(message) {
    determineLogVisibility('\x1B[94m', message);
  }

  ///FUNC [logSuccess] : Logging Success Messages
  static void logSuccess(message) {
    determineLogVisibility('\x1B[32m', message);
  }

  ///FUNC [logError] : Logging Error Messages
  static void logError(message) {
    determineLogVisibility('\x1b[31m', message);
  }

  ///FUNC [logWarning] : Logging Warning Messages
  static void logWarning(message) {
    determineLogVisibility('\x1b[33m', message);
  }

  ///FUNC [logGeneralLong] : Logging General Long Messages
/*
  static void logGeneralLong(String text) {
    final pattern = RegExp('.{1,800}'); // 800 is the size of each chunk
    pattern.allMatches(text).forEach((match) => determineLogVisibility('\x1B[94m', match.group(0)));
  }
*/

  ///FUNC [determineLogVisibility] : Only log if it is in dev
  static void determineLogVisibility(String ansiColorCode, message) {
    try {
      String messageString = message.toString();
      if (developmentEnv == 'dev') {
        debugPrint('$ansiColorCode$messageString\x1B[0m');
      }
    } catch (error) {
      debugPrint(error.toString());
    }
  }
}
