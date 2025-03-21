import 'package:all/all.dart';

extension NavigationExtensions on BuildContext {
  Future<T?> pushPage<T extends Object?>(Widget page) {
    return NavigatorService.push<T>(page);
  }

  void popPage<T extends Object?>([T? result]) {
    NavigatorService.pop<T>(result);
  }

  Future<T?> pushReplacementPage<T extends Object?, TO extends Object?>(Widget page) {
    return NavigatorService.pushReplacement<T, TO>(page);
  }

  Future<T?> pushAndRemoveUntilPage<T extends Object?>(Widget page, RoutePredicate predicate) {
    return NavigatorService.pushAndRemoveUntil<T>(page, predicate);
  }
}