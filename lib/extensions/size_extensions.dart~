import 'package:flutter/material.dart';
import '../app_context.dart';

extension SizeExtensions on num {
  double get sp {
    try {
      return MediaQuery.of(AppContext.context).textScaler.scale(toDouble());
    } catch (e) {
      return toDouble();
    }
  }

  double get sw {
    try {
      return this * MediaQuery.of(AppContext.context).size.width / 100;
    } catch (e) {
      final physicalSize = WidgetsBinding.instance.platformDispatcher.views.first.physicalSize;
      final devicePixelRatio = WidgetsBinding.instance.platformDispatcher.views.first.devicePixelRatio;
      final screenWidth = physicalSize.width / devicePixelRatio;
      return screenWidth * (toDouble() / 100);
    }
  }

  double get sh {
    try {
      return this * MediaQuery.of(AppContext.context).size.height / 100;
    } catch (e) {
      final physicalSize = WidgetsBinding.instance.platformDispatcher.views.first.physicalSize;
      final devicePixelRatio = WidgetsBinding.instance.platformDispatcher.views.first.devicePixelRatio;
      final screenHeight = physicalSize.height / devicePixelRatio;
      return screenHeight * (toDouble() / 100);
    }
  }

  double get w {
    return toDouble();
  }

  double get h {
    return toDouble();
  }
}