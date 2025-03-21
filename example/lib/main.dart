import 'dart:async';
import 'package:all/all.dart';


Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await GlobalContextInitializer().initialize();
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: AppRouter.router,
      // navigatorKey: navigatorKey,
      // home: Home(),
    );
  }
}



// DetailsPage.dart


