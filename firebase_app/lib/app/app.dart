import 'package:firebase_app/app/theme.dart';
import 'package:firebase_app/presentation/pages/home_page.dart';
import 'package:flutter/material.dart';

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: lightTheme,
      home: const HomePage(),
    );
  }
}
