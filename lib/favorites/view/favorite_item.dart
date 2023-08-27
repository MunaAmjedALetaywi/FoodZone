import 'package:flutter/material.dart';

class FavoriteItem extends StatelessWidget {
  const FavoriteItem({
    super.key,
    required this.onTapShowDetails,
    required this.onTapAddToCart,
    required this.imageURL,
    required this.itemName,
    required this.itemStoreName,
    required this.price,
  });

  final VoidCallback onTapShowDetails;
  final VoidCallback onTapAddToCart;
  final String imageURL;
  final String itemName;
  final String itemStoreName;
  final double price;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: onTapShowDetails,
          child: Container(
            padding: const EdgeInsets.all(4),
            decoration: BoxDecoration(
              border: Border.all(
                width: 2,
                color: const Color(0xFF9B1A19).withOpacity(0.33),
              ),
              borderRadius: BorderRadius.circular(15),
            ),
            child: Column(
              children: [
                SizedBox(
                  width: 120,
                  height: 120,
                  child: Image.network(imageURL),
                ),
                Text(
                  itemName,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(
                  height: 4,
                ),
                Text(
                  itemStoreName,
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff818181),
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Text(
                            '$price',
                            style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: Color(0xFF9B1A19),
                            ),
                          ),
                          const SizedBox(
                            width: 4,
                          ),
                          const Text(
                            'JOD',
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              color: Color(0xFF9B1A19),
                            ),
                          ),
                        ],
                      ),
                      const Spacer(),
                      InkWell(
                        onTap: onTapAddToCart,
                        child: Container(
                          width: 30,
                          height: 30,
                          decoration: const BoxDecoration(
                              color: Color(0xFF9B1A19), shape: BoxShape.circle),
                          alignment: Alignment.center,
                          child: const Icon(
                            Icons.add,
                            color: Colors.white,
                          ),
                          // IconButton(onPressed: (){}, icon: ),padding: EdgeInsets.zero,
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}