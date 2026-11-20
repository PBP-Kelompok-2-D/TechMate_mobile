import 'package:flutter/material.dart';
import 'package:techmate_mobile/routes/menu.dart';

void main() {
  runApp(const TechMateApp());
}

class TechMateApp extends StatelessWidget {
  const TechMateApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TechMate',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF001920),
          primary: const Color(0xFF0B1C2D),
          secondary: const Color(0xFF1F3B56),
        ),
        scaffoldBackgroundColor: const Color(0xFF001920),
        useMaterial3: true,
      ),
      home: MyHomePage(),
    );
  }
}