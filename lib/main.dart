import 'package:flutter/material.dart';
import 'package:login_page/Location.dart';
import 'package:login_page/Login.dart';
import 'package:login_page/SignUp.dart';
import 'package:login_page/Welcome.dart';
import 'package:login_page/test_backend.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:  Welcome()
    );
  }
}

