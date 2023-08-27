import 'package:flutter/material.dart';

class HomeItem extends StatefulWidget {
  const HomeItem({
    Key? key,
    required this.imageURL,
    required this.title,
    required this.onTap,
    required this.itemPrice,
  }) : super(key: key);

  final String imageURL;
  final String title;
  final VoidCallback onTap;
  final String itemPrice;

  @override
  _HomeItemState createState() => _HomeItemState();
}

class _HomeItemState extends State<HomeItem> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isFavorite = !isFavorite;
        });
        widget.onTap();
      },
      child: Container(
        width: 124,
        decoration: BoxDecoration(
          color: const Color(0xFFFF2F08).withOpacity(0.05),
          borderRadius: const BorderRadius.all(Radius.circular(12)),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(
              widget.imageURL,
              width: 70,
              height: 70,
            ),
            const SizedBox(
              height: 3,
            ),
            Text(
              widget.title,
              style: const TextStyle(
                fontSize: 9,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(
              height: 9,
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 16),
              height: 21,
              width: double.infinity,
              child: Stack(
                children: [
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: Text(
                      widget.itemPrice,
                      style: const TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFF9B1A19),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: Icon(
                      isFavorite
                          ? Icons.favorite // Change to filled heart icon when favorite
                          : Icons.favorite_border_rounded, // Outline heart icon when not favorite
                      color: Color(0xFF9B1A19),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 12,
            ),
          ],
        ),
      ),
    );
  }
}
