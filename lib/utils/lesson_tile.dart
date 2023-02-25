import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/favorite_provider.dart';

class LessonTile extends StatelessWidget {
  final String imagePath;
  final String tileTitle;
  final String tileSubTitle;
  final double tileRating;

  const LessonTile({
    super.key,
    required this.imagePath,
    required this.tileTitle,
    required this.tileSubTitle,
    required this.tileRating,
  });

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<FavoriteProvider>(context);
    return Container(
      padding: const EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SizedBox(
            height: 100,
            // width: 30,
            child: Image.asset(imagePath),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Tile Rating
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Icon(
                    Icons.star_rounded,
                    color: Colors.orange,
                  ),
                  const SizedBox(width: 5),
                  Text(
                    tileRating.toString(),
                  ),
                  const SizedBox(width: 45),
                  Container(
                    width: 35,
                    height: 35,
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: IconButton(
                      onPressed: () => provider.toggleFavorite(this),
                      icon: provider.isExist(this)
                          ? const Icon(
                              Icons.bookmark_rounded,
                              size: 20,
                            )
                          : const Icon(
                              Icons.bookmark_outline_rounded,
                              size: 20,
                            ),
                    ),
                  ),
                ],
              ),

              // Title
              Text(
                tileTitle,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),

              // Sub Title
              Text(
                tileSubTitle,
                style: const TextStyle(
                  color: Colors.grey,
                ),
              ),

              // Button
              Directionality(
                textDirection: TextDirection.rtl,
                child: ElevatedButton.icon(
                  onPressed: () => {},
                  label: const Text("Enroll Now"),
                  icon: const Icon(Icons.arrow_right_alt_rounded),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
