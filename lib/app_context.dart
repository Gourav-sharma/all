import 'package:flutter/material.dart';

class AppContext {
  static final AppContext _instance = AppContext._internal();
  BuildContext? _context;

  factory AppContext() {
    return _instance;
  }

  AppContext._internal();

  static void setContext(BuildContext? context) {
    _instance._context = context;
  }

  static BuildContext get context {
    if (_instance._context == null) {
      throw Exception('AppContext not initialized.');
    }
    return _instance._context!;
  }

  static bool get isInitialized => _instance._context != null;
}