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
      theme: ThemeData(
        //due to change of version madde me to use colorSchema instead of just specify the backgroundColor
        colorScheme: ColorScheme.fromSwatch().copyWith(
          background: const Color(0xFFE7626C),
        ),
        textTheme: const TextTheme(
          displayLarge: TextStyle(color: Color(0xFF232B55)),
        ),
        cardColor: const Color(0xFFF4EDDB),
      ),
      home: const HomeScreen(),
    );
  }
}
