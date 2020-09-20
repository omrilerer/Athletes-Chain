import 'package:flutter/material.dart';
import 'package:native_state/native_state.dart';
import 'homePage.dart';
import 'nbaPage.dart';
import 'soccerPage.dart';
import 'about.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/home',
      routes: {
        '/home': (context) => homePage(),
        '/nba': (context) => nbaPage(),
        '/soccer': (context) => soccerPage(),
        '/about': (context) => about(),
      },
    );
  }
}
