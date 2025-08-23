import 'package:flutter/material.dart';

class NavigationService {
  // Private constructor
  NavigationService._();

  // Global navigator key
  static final GlobalKey<NavigatorState> navigatorKey =
      GlobalKey<NavigatorState>();

  // Optional: Add helper methods if needed later, e.g.,
  // static Future<T?>? pushNamed<T extends Object?>(String routeName, {Object? arguments}) {
  //   return navigatorKey.currentState?.pushNamed<T>(routeName, arguments: arguments);
  // }
  //
  // static void pop<T extends Object?>([ T? result ]) {
  //    navigatorKey.currentState?.pop<T>(result);
  // }
}
