
import 'package:all/all.dart';

import 'all_platform_interface.dart';
import 'package:flutter/material.dart';

export 'package:flutter/services.dart';
export 'package:all/extensions/context_extensions.dart';
export 'package:all/extensions/size_extensions.dart';
export 'package:all/app_context.dart';
export 'package:all/global_context_initializer.dart';
export 'package:all/service/navigator_service.dart';
export 'package:all/extensions/navigation_extension.dart';

class All {
  Future<String?> getPlatformVersion() {
    return AllPlatform.instance.getPlatformVersion();
  }

  static BuildContext get context {
    if (!AppContext.isInitialized) {
      throw Exception('GlobalContext not initialized.');
    }
    return AppContext.context;
  }

  static void showSnackBar(String message) {
    if (AppContext.isInitialized) {
      context.showSnackBar(message);
    }
  }

  static Future<T?> showCustomDialog<T>({required Widget child}) {
    return context.showCustomDialog<T>(child: child);
  }

  static  go(Widget page) {
    return NavigatorService.push(page);
  }

  static void pop<T extends Object?>([T? result]) {
    NavigatorService.pop<T>(result);
  }

  static push(Widget page) {
    return context.pushPage(page);
  }

  static  pushReplacement(Widget page) {
    return context.pushReplacementPage(page);
  }

  static  pushAndRemoveUntil(Widget page, RoutePredicate predicate) {
    return context.pushAndRemoveUntilPage(page, predicate);
  }

}
