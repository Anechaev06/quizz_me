import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/favorite_provider.dart';

class FavoritesPage extends StatelessWidget {
  const FavoritesPage({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<FavoriteProvider>(context);
    final tiles = provider.tiles;
    return SafeArea(
      child: ListView(
        children: [
          for (var tile in tiles) tile,
        ],
      ),
    );
  }
}
