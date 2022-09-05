import 'package:flutter/material.dart';
import 'package:lingual/screens/ar_translation_screen.dart';
import 'screens/language_selector_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LanguageSelectorScreen(),
    );
  }
}
