import 'package:education_app/Models/lesson.dart';
import 'package:education_app/UI/utils/color.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class ListOfLesson extends StatelessWidget {
  final Lesson lesson;
  const ListOfLesson({super.key, required this.lesson});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        lesson.isPlaying
            ? const Icon(
                Icons.play_circle,
                color: primaryColor,
                size: 40,
              )
            : Icon(
                Icons.play_circle_outline,
                color: primaryColor.withOpacity(0.7),
                size: 40,
              ),
        SizedBox(width: 15),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                lesson.name,
                style: TextStyle(
                  fontSize: 16,
                  color: lesson.isCompleted ? Colors.black : Colors.black54,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Text(
                lesson.duration,
                style: const TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.w500,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
        ),
        lesson.isCompleted
            ? const Icon(
                Iconsax.tick_circle,
                color: Colors.green,
                size: 30,
              )
            : Icon(
                Iconsax.lock_circle,
                color: Colors.amber[400],
                size: 30,
              ),
      ],
    );
  }
}
