import 'package:flutter/material.dart';
import '../app_context.dart';

extension ContextExtensions on BuildContext {
  ThemeData get theme => Theme.of(this);
  MediaQueryData get mediaQuery => MediaQuery.of(this);
  Size get screenSize => MediaQuery.of(this).size;
  double get screenWidth => MediaQuery.of(this).size.width;
  double get screenHeight => MediaQuery.of(this).size.height;

  void showSnackBar(String message) {
    ScaffoldMessenger.of(this).showSnackBar(SnackBar(content: Text(message)));
  }

  Future<T?> showCustomDialog<T>({required Widget child}) {
    return showDialog<T>(context: this, builder: (context) => child);
  }

  void setGlobalContext() {
    AppContext.setContext(this);
  }

  void showGlobalSnackBar(String message) {
    final globalContext = AppContext.context;
    ScaffoldMessenger.of(globalContext).showSnackBar(SnackBar(content: Text(message)));
  }


}