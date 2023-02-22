import 'package:flutter/material.dart';

class SubjectButton extends StatelessWidget {
  final String imagePath;
  final String subjectName;

  const SubjectButton({
    super.key,
    required this.imagePath,
    required this.subjectName,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 60,
          child: Image.asset(imagePath),
        ),
        const SizedBox(
          height: 20,
        ),
        Text(subjectName),
      ],
    );
  }
}
