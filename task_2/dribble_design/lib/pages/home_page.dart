// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:dribble_design/util/emoticon_face.dart';
import 'package:dribble_design/util/exercise_title.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[800],
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.message),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: '',
          ),
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Column(
                children: [
                  Row(
                    // Greeting !
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Hi, Ruban!',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          Text(
                            '21 Oct, 2022',
                            style: TextStyle(color: Colors.blue[200]),
                          ),
                        ],
                      ),

                      //Notification
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.blue[600],
                            borderRadius: BorderRadius.circular(30)),
                        padding: const EdgeInsets.all(12),
                        child: const Icon(
                          Icons.notifications,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  //Search Bar
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.blue[600],
                        borderRadius: BorderRadius.circular(12)),
                    padding: const EdgeInsets.all(12),
                    child: Row(
                      children: [
                        const Icon(
                          Icons.search_sharp,
                          color: Colors.white,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        const Text(
                          'Search',
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ),
                  ),

                  const SizedBox(
                    height: 25,
                  ),
                  // how do you feel??
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'How do you feel?',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                      const Icon(
                        Icons.more_horiz,
                        color: Colors.white,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  // 4 different faces
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      //bad
                      Column(
                        children: [
                          const EmoticonFace(
                            emoticonFace: '😩',
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          const Text(
                            'Bad',
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                      //fine
                      Column(
                        children: [
                          const EmoticonFace(
                            emoticonFace: '🙂',
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          const Text(
                            'Fine',
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                      //well
                      Column(
                        children: [
                          const EmoticonFace(
                            emoticonFace: '🤩',
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          const Text(
                            'Well',
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                      //execellent
                      Column(
                        children: [
                          const EmoticonFace(
                            emoticonFace: '🥳',
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          const Text(
                            'Execellent',
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                padding: const EdgeInsets.all(25),
                color: Colors.grey[200],
                child: Center(
                  child: Column(
                    children: [
                      // exercise heading
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            'Exercises',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          const Icon(Icons.more_horiz),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      //Listview of exercises
                      Expanded(
                        child: ListView(
                          children: [
                            const ExerciseTitle(
                              icon: Icons.favorite,
                              color: Colors.blue,
                              execiseName: 'Speaking Skills',
                              numberOfExercise: 16,
                            ),
                            const ExerciseTitle(
                              icon: Icons.person,
                              color: Colors.green,
                              execiseName: 'Reading Skills',
                              numberOfExercise: 8,
                            ),
                            const ExerciseTitle(
                              icon: Icons.star,
                              color: Colors.pink,
                              execiseName: 'Writting Skills',
                              numberOfExercise: 10,
                            ),
                            const ExerciseTitle(
                              icon: Icons.sports_football,
                              color: Colors.purple,
                              execiseName: 'Sports Skills',
                              numberOfExercise: 12,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
