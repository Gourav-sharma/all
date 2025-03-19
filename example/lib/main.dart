import 'package:flutter/material.dart';
import 'dart:async';

import 'package:flutter/services.dart';
import 'package:all/all.dart';

final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

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
    return MaterialApp(
      navigatorKey: NavigatorService.navigatorKey,
      home: const Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 90.sw,
              child: ElevatedButton(
                onPressed: () {
                  All.showCustomDialog(
                      child: Center(
                        child: Container(
                          width: 60.sw,
                          height: 150.sp,
                          color: Colors.white,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text('Want to go to Second Page?',
                                  style:TextStyle(fontSize: 15.sp,
                                    color: Colors.black,
                                    decoration: TextDecoration.none,
                                  ),),
                              ),
                              SizedBox(
                                width: 100.sp,
                                child: ElevatedButton(
                                  child: Text('Yes'),
                                  onPressed: () {
                                    All.pop();
                                    All.push(DetailsPage());
                                  },
                                ),
                              )
                            ],
                          ),
                        ),
                      ));
                },
                child: Text('Go to Second Page',
                    style: TextStyle(
                      fontSize: 15.sp,
                    )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// DetailsPage.dart

class DetailsPage extends StatelessWidget {
  const DetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Details')),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            All.showSnackBar("Clicked");
          },
          child: const Text('Go Back'),
        ),
      ),
    );
  }
}
