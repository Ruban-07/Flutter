import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Ruban'),
        ),
        body: const Center(
          child: Text(
            'Ruban Raghavendar',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.red,
              fontSize: 30,
              fontStyle: FontStyle.italic,
              letterSpacing: 5.0,
              wordSpacing: 5.0,
              shadows: [
                Shadow(
                    color: Colors.black, offset: Offset(4, 1), blurRadius: 10)
              ],
              decoration: TextDecoration.underline,
            ),
          ),
        ),
      ),
    );
  }
}
