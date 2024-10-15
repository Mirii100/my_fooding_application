import 'package:flutter/material.dart';
import 'package:my_fooding_application/pages/home.dart';
import 'package:my_fooding_application/pages/login.dart';
import 'package:my_fooding_application/pages/signup.dart';

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
      title: "online fooding application",



      home: Home(),

    );
  }
}


