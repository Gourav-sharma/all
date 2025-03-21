import 'package:all/all.dart';

class GlobalContextInitializer extends WidgetsBindingObserver {
  static final ValueNotifier<bool> contextInitialized = ValueNotifier(false);

  static void resetState() {
    contextInitialized.value = false;
    AppContext.setContext(null);
  }

  Future<void> initialize() async {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      WidgetsBinding.instance.removeObserver(this);
      try {
        if (navigatorKey.currentState != null) { // Use NavigatorService key
          AppContext.setContext(navigatorKey.currentState!.context);
          contextInitialized.value = true;
        } else {
          WidgetsBinding.instance.addPostFrameCallback((_) {
            AppContext.setContext(navigatorKey.currentState!.context);
            contextInitialized.value = true;
          });
        }
      } catch (e) {
        debugPrint('GlobalContextInitializer: Error setting context: $e');
      }
    });
  }

  @override
  void didChangeMetrics() {}
}