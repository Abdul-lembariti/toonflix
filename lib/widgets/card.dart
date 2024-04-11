import 'package:flutter/material.dart';

class CurrencyCard extends StatelessWidget {
  final String name, code, amount;
  final IconData icon;
  final bool isInverted;
  final _black = const Color(0xFF1F2123);
  final Offset offset;

  const CurrencyCard({
    super.key,
    required this.name,
    required this.code,
    required this.amount,
    required this.icon,
    required this.isInverted,
    this.offset = Offset.zero,
  });

  @override
  Widget build(BuildContext context) {
    return Transform.translate(
      offset: offset,
      child: Container(
          clipBehavior: Clip.antiAlias,
          decoration: BoxDecoration(
              color: isInverted ? Colors.white : _black,
              borderRadius: BorderRadius.circular(25)),
          child: Padding(
            padding: const EdgeInsets.all(25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      style: TextStyle(
                          color: isInverted ? _black : Colors.white,
                          fontSize: 32,
                          fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Text(
                          amount,
                          style: TextStyle(
                            color: isInverted ? _black : Colors.white,
                            fontSize: 18,
                          ),
                        ),
                        const SizedBox(
                          width: 7,
                        ),
                        Text(
                          code,
                          style: TextStyle(
                              color:
                                  isInverted ? Colors.black : Colors.white60),
                        ),
                      ],
                    ),
                  ],
                ),
                Transform.scale(
                  scale: 2,
                  child: Transform.translate(
                    offset: const Offset(
                      0,
                      15,
                    ),
                    child: Icon(
                      icon,
                      color: isInverted ? _black : Colors.white,
                      size: 88,
                    ),
                  ),
                )
              ],
            ),
          )),
    );
  }
}
