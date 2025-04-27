import 'package:flutter/material.dart';
import 'package:smart_store_admin/screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Smart Store Admin',
      home: MyHomePage(),
    );
  }
}
