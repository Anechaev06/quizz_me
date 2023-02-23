import 'package:flutter/material.dart';
import 'package:quizz_me/constants/favorites.dart';

class LessonTile extends StatefulWidget {
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
  State<LessonTile> createState() => _LessonTileState();
}

class _LessonTileState extends State<LessonTile> {
  bool isPressed = false;
  void addFavoriteTile() {
    if (favoriteLessonTile.contains(widget)) {
      favoriteLessonTile.remove(widget);
    } else {
      favoriteLessonTile.add(widget);
    }

    setState(() => favoriteLessonTile);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SizedBox(
            height: 100,
            // width: 30,
            child: Image.asset(widget.imagePath),
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
                    widget.tileRating.toString(),
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
                      onPressed: () {
                        addFavoriteTile();
                      },
                      icon: isPressed
                          ? const Icon(Icons.bookmark_rounded, size: 20)
                          : const Icon(Icons.bookmark_outline_rounded,
                              size: 20),
                    ),
                  ),
                ],
              ),

              // Title
              Text(
                widget.tileTitle,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),

              // Sub Title
              Text(
                widget.tileSubTitle,
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
