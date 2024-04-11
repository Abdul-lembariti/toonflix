import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:toonflix/widgets/button.dart';

final Color textColor = Colors.white.withOpacity(0.8);

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            backgroundColor: const Color(0xFF181818),
            body: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 80,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            const Text(
                              'Hey Sellina',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 28,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              'Welcome back',
                              style: TextStyle(
                                color: textColor,
                                fontSize: 17,
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 120,
                    ),
                    const Text(
                      'Total Balance',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white54,
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    const Text(
                      '\$5 194 535',
                      style: TextStyle(
                        fontSize: 42,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Button(
                          text: 'Transfer',
                          bgColor: Color(0xFFF2B33A),
                          textColor: Colors.black,
                        ),
                        Button(
                          text: 'Request',
                          bgColor: Color(0xFF1F2123),
                          textColor: Colors.white,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 100,
                    ),
                    const Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Wallets',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'View All',
                          style: TextStyle(
                            color: Colors.white70,
                            fontSize: 18,
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                        clipBehavior: Clip.antiAlias,
                        decoration: BoxDecoration(
                            color: const Color(0xFF1F2123),
                            borderRadius: BorderRadius.circular(25)),
                        child: Padding(
                          padding: const EdgeInsets.all(25),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'EURO',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 32,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        '6428',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 18,
                                        ),
                                      ),
                                      SizedBox(
                                        width: 7,
                                      ),
                                      Text(
                                        'Eur',
                                        style: TextStyle(color: Colors.white60),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              Transform.scale(
                                scale: 2,
                                child: Transform.translate(
                                  offset: const Offset(0, 15),
                                  child: const Icon(
                                    Icons.euro_rounded,
                                    color: Colors.white,
                                    size: 88,
                                  ),
                                ),
                              )
                            ],
                          ),
                        )),
                  ],
                ))));
  }
}
