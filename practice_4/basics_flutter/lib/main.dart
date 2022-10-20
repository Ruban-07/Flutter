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
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Pratice'),
        ),
        body: ButtonBar(
          alignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
                splashColor: Colors.orange,
                splashRadius: 25,
                onPressed: (() {}),
                icon: const Icon(Icons.home)),
            IconButton(
                splashColor: Colors.orange,
                splashRadius: 25,
                onPressed: (() {}),
                icon: const Icon(Icons.people)),
            IconButton(
                splashColor: Colors.orange,
                splashRadius: 25,
                onPressed: (() {}),
                icon: const Icon(Icons.add)),
            IconButton(
                splashColor: Colors.orange,
                splashRadius: 25,
                onPressed: (() {}),
                icon: const Icon(Icons.search)),
          ],
        ),
      ),
    );
  }
}
