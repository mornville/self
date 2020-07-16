import 'package:flutter/material.dart';
import 'package:self/home.dart' as home;
import 'package:self/appList.dart' as appList;
import 'package:self/appScreen.dart' as appScreen;
import 'package:self/splash.dart' as splash;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'SELF - An All in One App',
      theme: ThemeData(
        primarySwatch: Colors.grey,
        primaryColor: Color.fromRGBO(1, 45, 138, 1),
        brightness: Brightness.light,
        backgroundColor: Color(0xFFE5E5E5),
        accentColor: Colors.black,
        accentIconTheme: IconThemeData(color: Colors.white),
        dividerColor: Colors.white54,
      ),
      home: Material(
        child: splash.SplashScreen(),
      ),
      routes: {
        '/appScreen': (context) => appScreen.AppScreen(),
        '/appList': (context) => appList.AppList(),
        '/home': (context) => home.Dashboard()
      },
    );
  }
}
