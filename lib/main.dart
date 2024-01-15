// ignore_for_file: unused_element

import 'package:flutter/material.dart';
import 'package:urllouncher/view/telegram/telegram_register_page.dart';

void main() {
   

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const RegisterPage(),
    );
  }
}
