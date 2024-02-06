import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Travel App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF3EBACE),
          primary: const Color(0xFF3EBACE),
          secondary: const Color(0xFFD8ECF1),
        ),
        scaffoldBackgroundColor: const Color(0xFFF3F5F7),
      ),
    );
  }
}
