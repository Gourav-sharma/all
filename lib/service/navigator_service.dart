import 'package:all/all.dart';

class NavigatorService {

  static NavigatorState? get navigator => navigatorKey.currentState;

  static Future<T?> push<T extends Object?>(Widget page) {
    return navigator!.push(MaterialPageRoute(builder: (context) => page));
  }

  static void pop<T extends Object?>([T? result]) {
    navigator!.pop(result);
  }

  static Future<T?> pushReplacement<T extends Object?, TO extends Object?>(Widget page) {
    return navigator!.pushReplacement(MaterialPageRoute(builder: (context) => page));
  }

  static Future<T?> pushAndRemoveUntil<T extends Object?>(Widget page, RoutePredicate predicate) {
    return navigator!.pushAndRemoveUntil(MaterialPageRoute(builder: (context) => page), predicate);
  }
}