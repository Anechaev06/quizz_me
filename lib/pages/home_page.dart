import 'package:flutter/material.dart';
import 'package:anim_search_bar/anim_search_bar.dart';
import 'package:quizz_me/utils/lessons_tile.dart';
import 'package:quizz_me/utils/subject_button.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    TextEditingController textController = TextEditingController();
    final controller = PageController();

    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Title
          SizedBox(
            width: double.infinity,
            height: 70,
            child: Image.asset("assets/logo.png"),
          ),

          const SizedBox(height: 20),

          // Search and Qr
          Container(
            width: 350,
            height: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              color: const Color.fromARGB(255, 205, 240, 234),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AnimSearchBar(
                  width: 250,
                  textController: textController,
                  onSuffixTap: () => setState(() => textController.clear()),
                  onSubmitted: ((p0) => null),
                ),
                const SizedBox(width: 20),
                OutlinedButton(
                  onPressed: () => {},
                  child: const Icon(
                    Icons.qr_code_rounded,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(height: 20),

          // List View
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.6,
            child: ListView(
              children: [
                // Categories
                const Padding(
                  padding: EdgeInsets.only(left: 25, right: 25),
                  child: Text(
                    "Categories",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      fontSize: 20,
                    ),
                  ),
                ),

                const SizedBox(height: 10),

                // Subjects
                SizedBox(
                  height: 125,
                  child: PageView(
                    scrollDirection: Axis.horizontal,
                    controller: controller,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: const [
                          SubjectButton(
                            imagePath: "assets/subjects/math.png",
                            subjectName: "Math",
                          ),
                          SubjectButton(
                            imagePath: "assets/subjects/english.png",
                            subjectName: "English",
                          ),
                          SubjectButton(
                            imagePath: "assets/subjects/cs.png",
                            subjectName: "IT",
                          ),
                          SubjectButton(
                            imagePath: "assets/subjects/physics.png",
                            subjectName: "Physics",
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: const [
                          SubjectButton(
                            imagePath: "assets/subjects/art.png",
                            subjectName: "Art",
                          ),
                          SubjectButton(
                            imagePath: "assets/subjects/biology.png",
                            subjectName: "Biology",
                          ),
                          SubjectButton(
                            imagePath: "assets/subjects/music.png",
                            subjectName: "Music",
                          ),
                          SubjectButton(
                            imagePath: "assets/subjects/history.png",
                            subjectName: "History",
                          ),
                        ],
                      ),
                    ],
                  ),
                ),

                // Page Indicator
                Center(
                  child: SmoothPageIndicator(
                    controller: controller,
                    count: 2,
                    effect: ExpandingDotsEffect(
                      activeDotColor: Colors.grey.shade700,
                    ),
                  ),
                ),

                // Pupular Lessons
                const Padding(
                  padding: EdgeInsets.only(left: 25, right: 25, top: 20),
                  child: Text(
                    "Popular Lessons",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      fontSize: 20,
                    ),
                  ),
                ),

                Column(
                  children: const [
                    LessonTile(
                      imagePath: "assets/icons/algebra.png",
                      tileTitle: "Algebra Basics",
                      tileSubTitle: "By teacher",
                      tileRating: 4.6,
                    ),
                    LessonTile(
                      imagePath: "assets/icons/geometry.png",
                      tileTitle: "Geometry Basics",
                      tileSubTitle: "By teacher",
                      tileRating: 4.7,
                    ),
                    LessonTile(
                      imagePath: "assets/icons/physics.png",
                      tileTitle: "Physics Basics",
                      tileSubTitle: "By teacher",
                      tileRating: 5.0,
                    ),
                    LessonTile(
                      imagePath: "assets/icons/chemistry.png",
                      tileTitle: "Chemistry Basics",
                      tileSubTitle: "By teacher",
                      tileRating: 4.3,
                    ),
                  ],
                ),
              ],
            ),
          ),

          const SizedBox(height: 10),
        ],
      ),
    );
  }
}
