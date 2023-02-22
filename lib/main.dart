import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:quizz_me/pages/favorites_page.dart';
import 'package:quizz_me/pages/home_page.dart';
import 'package:quizz_me/pages/profile_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Pages(),
    );
  }
}

class Pages extends StatefulWidget {
  const Pages({super.key});

  @override
  State<Pages> createState() => _PagesState();
}

class _PagesState extends State<Pages> {
  int selectedIndex = 1;

  @override
  Widget build(BuildContext context) {
    Widget page;
    switch (selectedIndex) {
      case 0:
        page = const ProfilePage();
        break;
      case 1:
        page = const HomePage();
        break;
      case 2:
        page = const FavoritesPage();
        break;
      default:
        throw UnimplementedError("no widget for $selectedIndex");
    }

    return Scaffold(
      body: page,
      bottomNavigationBar: CurvedNavigationBar(
        color: const Color.fromARGB(255, 205, 240, 234),
        backgroundColor: Colors.white,
        index: 1,
        items: const [
          Icon(
            Icons.bookmarks_rounded,
            color: Color.fromARGB(255, 162, 189, 184),
            size: 35,
          ),
          Icon(
            Icons.home_rounded,
            color: Color.fromARGB(255, 162, 189, 184),
            size: 35,
          ),
          Icon(
            Icons.person_rounded,
            color: Color.fromARGB(255, 162, 189, 184),
            size: 35,
          ),
        ],
        animationDuration: const Duration(milliseconds: 200),
        onTap: (index) => setState(() => selectedIndex = index),
      ),
    );
  }
}
