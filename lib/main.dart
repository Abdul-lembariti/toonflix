import 'package:flutter/material.dart';

final Color textColor = Colors.white.withOpacity(0.8);

void main() {
  runApp(const App());
}

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  bool showTitle = true;

  void toggleTitle() {
    setState(() {
      showTitle = !showTitle;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
          textTheme: const TextTheme(
            titleLarge: TextStyle(
              color: Colors.red,
              fontSize: 30,
            ),
          ),
        ),
        home: Scaffold(
          backgroundColor: const Color(0xFFF4EDDB),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                showTitle ? const MyLargeTttle() : const Text('Nothing to see'),
                IconButton(
                    onPressed: toggleTitle,
                    icon: const Icon(Icons.remove_red_eye_rounded))
              ],
            ),
          ),
        ));
  }
}

class MyLargeTttle extends StatefulWidget {
  const MyLargeTttle({
    super.key,
  });

  @override
  State<MyLargeTttle> createState() => _MyLargeTttleState();
}

class _MyLargeTttleState extends State<MyLargeTttle> {
  @override

  //is not neccessary to use the initstate untill u use the data / context from the father
  void initState() {
    super.initState();
    print('!initState');
  }

//calld when the widget is removed from the screen example unsub from the listener
  @override
  void dispose() {
    super.dispose();
    print('Dispose');
  }

  @override
  Widget build(BuildContext context) {
    print('buid');
    return Text(
      'My Large Title',
      style: TextStyle(
        fontSize: Theme.of(context).textTheme.titleLarge?.fontSize,
        color: Theme.of(context).textTheme.titleLarge?.color,
      ),
    );
  }
}
