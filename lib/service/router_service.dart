

import 'package:all/all.dart';

final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

class AppRouter{

  static String homePage  = '/home';
  static String detailPage = '/detailpage';

  static final GoRouter _router = GoRouter(
    navigatorKey: navigatorKey,
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) =>  Home(),
      ),
      GoRoute(
        path: detailPage,
        builder: (context, state) =>  DetailsPage(),
      ),

    ],
  );

  static GoRouter get router => _router;

  static Future<void> go(String location) async {
    _router.go(location);
  }

  static Future<void> goNamed(String namedRoute) async {
    _router.goNamed(namedRoute);
  }
  static Future<void> goPush(String namedRoute) async {
    _router.push(namedRoute);
  }
  static Future<void> goBack() async {
    _router.pop();
  }

}