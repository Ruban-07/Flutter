import 'package:flutter/material.dart';

// ignore: prefer_const_constructors
void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _volume = 0;

  void volume_up() {
    setState(() {
      _volume += 10;
    });
  }

  void volume_down() {
    setState(() {
      _volume -= 10;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Testing'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: IconButton(
                icon: const Icon(Icons.volume_up),
                iconSize: 50,
                color: Colors.red,
                onPressed: volume_up,
              ),
            ),
            Text('Volume : $_volume'),
            Center(
              child: IconButton(
                icon: const Icon(Icons.volume_down),
                iconSize: 50,
                color: Colors.red,
                onPressed: volume_down,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
