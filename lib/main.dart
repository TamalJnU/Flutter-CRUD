import 'package:first_flutter_application/pages/login.dart';
import 'package:first_flutter_application/pages/page1.dart';
import 'package:first_flutter_application/pages/page2.dart';
import 'package:first_flutter_application/pages/page3.dart';
import 'package:first_flutter_application/pages/home.dart';
import 'package:first_flutter_application/pages/signup.dart';
import 'package:first_flutter_application/pages/userlist.dart';
import 'package:first_flutter_application/practice.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.teal),
      darkTheme: ThemeData(primarySwatch: Colors.green),
      //home: const MyApp2()
      //home: UserList(),

      initialRoute: "/",
      routes: {
        "/": (context) => Login(),
        "/login": (context) => Login(),
        "/userList": (context) => UserList(),
        "/signup": (context) => Signup(),
        "/home": (context) => Home(),

        "/page1": (context) => Page1(),
        "/page2": (context) => Page2(),
        "/page3": (context) => Page3(),
      },
    );
  }
}

