import 'package:flutte_youtube_8hrs_practice/Screens/MyRoutes.dart';
import 'package:flutter/material.dart';
import 'home_page.dart';
import 'second_screen.dart';
import 'login_page.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: HomePage(),
      themeMode: ThemeMode.dark,
      theme: ThemeData(primarySwatch: Colors.blueGrey),
      darkTheme: ThemeData(brightness: Brightness.dark),
      routes: {
        "/" : (context) => Login_Page(),
          MyRoutes.homeRoute: (context) => HomePage(),
        // MyRoutes.loginRoute: (context) => Login_Page(),

      },
    );
  }
}
