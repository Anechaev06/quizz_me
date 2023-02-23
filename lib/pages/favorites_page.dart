import 'package:flutter/material.dart';
import 'package:quizz_me/constants/favorites.dart';

class FavoritesPage extends StatefulWidget {
  const FavoritesPage({super.key});

  @override
  State<FavoritesPage> createState() => _FavoritesPageState();
}

class _FavoritesPageState extends State<FavoritesPage> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        for (var listTile in favoriteLessonTile)
          Column(
            children: [listTile],
          ),
      ],
    );
  }
}
