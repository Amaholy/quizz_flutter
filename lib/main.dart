import 'package:flutter/material.dart';
import 'package:quizz_app/pages/home_page.dart';
import 'package:quizz_app/pages/test_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'App title',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme: TextTheme(
          bodySmall: TextStyle(fontSize: 22.0, color: Colors.white),
        ),
        fontFamily: 'Georgia',
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => HomePage(),
        'testPage': (context) => TestPage(),
      },
    );
  }
}
