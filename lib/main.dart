import 'package:flutter/material.dart';
import 'package:onbording1/onboarding_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowMaterialGrid: false, home: OnBoadingScreen());
  }
}
