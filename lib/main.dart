import 'package:flutter/material.dart';
import 'package:toonflix/widgets/button.dart';
import 'package:toonflix/widgets/card.dart';

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
            body: SingleChildScrollView(
              child: Padding(
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
                        height: 70,
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
                      const CurrencyCard(
                        name: 'EURO',
                        code: 'EUR',
                        amount: '6 430',
                        icon: Icons.euro_rounded,
                        isInverted: false,
                      ),
                      const CurrencyCard(
                        name: 'BITCOIN',
                        code: 'BCT',
                        amount: '9 430',
                        icon: Icons.currency_bitcoin_rounded,
                        isInverted: true,
                        offset: Offset(0, -20),
                      ),
                      const CurrencyCard(
                        name: 'DOLLAR',
                        code: 'USD',
                        amount: '9 430',
                        icon: Icons.attach_money_rounded,
                        isInverted: false,
                        offset: Offset(0, -40),
                      ),
                    ],
                  )),
            )));
  }
}
