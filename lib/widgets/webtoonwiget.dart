import 'package:flutter/material.dart';
import 'package:toonflix/screens/detail.dart';

class Webtoon extends StatelessWidget {
  final String title, thumb, id;
  const Webtoon({
    super.key,
    required this.title,
    required this.thumb,
    required this.id,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailScreen(
              title: title,
              thumb: thumb,
              id: id,
            ),
            fullscreenDialog: true, // from bottom
          ),
        );
      },
      child: Column(
        children: [
          Hero(
            tag: id,
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: const [
                    BoxShadow(
                      blurRadius: 15,
                      offset: Offset(10, 10),
                      color: Colors.black45,
                    )
                  ]),
              clipBehavior: Clip.antiAlias,
              width: 250,
              child: const Image(
                image: NetworkImage(
                  'https://i.pinimg.com/736x/5a/6e/55/5a6e557d8c5a68bc93106239dc2779fe.jpg',
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Text(
            title,
            style: const TextStyle(fontSize: 23, fontWeight: FontWeight.w500),
          ),
        ],
      ),
    );
  }
}
