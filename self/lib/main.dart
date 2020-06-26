import 'package:flutter/material.dart';
import 'package:self/home.dart' as home;
import 'package:self/appList.dart' as appList;
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Smitty LLC Application',
          theme: ThemeData(
            primarySwatch: Colors.grey,
            primaryColor: Color.fromRGBO(1, 45, 138, 1),
            brightness: Brightness.light,
            backgroundColor: Color(0xFFE5E5E5),
            accentColor: Colors.black,
            accentIconTheme: IconThemeData(color: Colors.white),
            dividerColor: Colors.white54,
          ),
          home: Material(child: home.Dashboard(),),
          routes: {
            '/appList':(context)=>appList.AppList(),

          },
         
        );
  }
}
