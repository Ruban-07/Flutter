// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

class ExerciseTitle extends StatelessWidget {
  final icon;
  final color;
  final String execiseName;
  final int numberOfExercise;
  const ExerciseTitle(
      {super.key,
      this.icon,
      required this.execiseName,
      required this.numberOfExercise,
      this.color});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(16)),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(18),
                child: Container(
                    padding: const EdgeInsets.all(16),
                    color: color,
                    child: Icon(
                      icon,
                      color: Colors.white,
                    )),
              ),
              const SizedBox(
                width: 12,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    execiseName,
                    style: const TextStyle(
                        fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    '$numberOfExercise Exercises',
                    style: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey),
                  ),
                ],
              ),
            ],
          ),
          const Icon(Icons.more_horiz),
        ]),
      ),
    );
  }
}
