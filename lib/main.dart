import 'package:flutter/material.dart';
import 'package:toonflix/screens/home_screen.dart';

final Color textColor = Colors.white.withOpacity(0.8);

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}
