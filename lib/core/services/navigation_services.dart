import 'package:flutter/material.dart';

class NavigationService {
  /// Global key for Navigator State.
  static GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  /// Getter [context]
  /// Gets the current widget context
  BuildContext? get context => navigatorKey.currentState?.context;

  /// Function [popUntil]
  /// Calls [pop] repeatedly until the predicate returns true.
  void popUntil(bool Function(Route<dynamic>) predicate) {
    return navigatorKey.currentState?.popUntil(predicate);
  }

  /// Function [pushNamedAndRemoveUntil]
  /// Push the route with the given name onto the navigator, and then remove all
  /// the previous routes until the predicate returns true.
  Future<T?>? pushNamedAndRemoveUntil<T extends Object>(
    String newRoute, {
    Object? arguments,
  }) {
    return navigatorKey.currentState?.pushNamedAndRemoveUntil<T>(
      newRoute,
      (route) => false,
      arguments: arguments,
    );
  }

  /// Function [pushReplacementNamed]
  /// Replace the current route of the navigator by pushing the route named
  /// [routeName] and then disposing the previous route once the new route
  /// has finished animating in.
  Future<T?>? pushReplacementNamed<T extends Object, TO extends Object>(
    String routeName, {
    Object? arguments,
    TO? result,
  }) {
    return navigatorKey.currentState?.pushReplacementNamed<T, TO>(
      routeName,
      arguments: arguments,
      result: result,
    );
  }

  /// Function [pushNamed]
  /// Push a named route onto the navigator.
  Future<T?>? pushNamed<T extends Object>(String routeName, {Object? arguments}) {
    return navigatorKey.currentState?.pushNamed<T>(
      routeName,
      arguments: arguments,
    );
  }

  /// Function [push]
  /// Push the given route onto the navigator.
  Future<T?>? push<T extends Object>(Route<T> route) {
    return navigatorKey.currentState?.push<T>(route);
  }

  /// Function [pop]
  /// Pop the top-most route off the navigator.
  void pop<T extends Object>([T? result]) {
    return navigatorKey.currentState?.pop<T>(result);
  }
}
