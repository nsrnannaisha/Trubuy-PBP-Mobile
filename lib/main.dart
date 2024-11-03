import 'package:flutter/material.dart';
import 'package:trubuy_mobile/menu.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // Root application
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch().copyWith(
          primary: ColorSelect.cbuttons,
        ),
        useMaterial3: true,
      ),
      home: MyHomePage(),
    );
  }
}