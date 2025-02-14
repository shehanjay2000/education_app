import 'package:flutter/material.dart';
import "package:education_app/screens/education_app_main_screen.dart";

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: EducationAppMainScreen(),
    );
  }
}
