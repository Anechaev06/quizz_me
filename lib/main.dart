import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:quizz_me/pages/favorites_page.dart';
import 'package:quizz_me/pages/home_page.dart';
import 'package:quizz_me/pages/profile_page.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

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
  final List<Widget> pages = [
    const ProfilePage(),
    const HomePage(),
    const FavoritesPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          pages.elementAt(selectedIndex),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 15),
            child: Align(
              alignment: const Alignment(0.0, 1.0),
              child: ClipRRect(
                borderRadius: const BorderRadius.all(
                  Radius.circular(30),
                ),
                child: GNav(
                  selectedIndex: 1,
                  tabBorderRadius: 100,
                  duration: const Duration(milliseconds: 500),
                  tabActiveBorder: Border.all(color: Colors.white, width: 1.5),
                  onTabChange: (index) => setState(() => selectedIndex = index),
                  backgroundColor: const Color.fromARGB(255, 205, 240, 234),
                  color: const Color.fromARGB(255, 162, 189, 184),
                  activeColor: Colors.deepPurple[400],
                  gap: 8,
                  padding: const EdgeInsets.all(15),
                  tabs: const [
                    GButton(
                      iconSize: 30,
                      icon: Icons.bookmarks_rounded,
                      text: "bookmarks",
                    ),
                    GButton(
                      iconSize: 30,
                      icon: Icons.home_rounded,
                      text: "Home",
                    ),
                    GButton(
                      iconSize: 30,
                      icon: Icons.person_rounded,
                      text: "Profile",
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
