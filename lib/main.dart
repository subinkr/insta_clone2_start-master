import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

import 'root_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    print('MyApp created');
    return FutureBuilder(
      future: Firebase.initializeApp(),
      builder: (context, snapshot) {
        return MaterialApp(
          title: 'Flutter Demo',
          theme: ThemeData(
            primaryColor: Colors.white,
            accentColor: Colors.black,
          ),
          home: RootPage(),
        );
      },
    );
  }
}
