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
          title: const Text('Ruban'),
          leading: const Icon(Icons.mail),
        ),
        body: SizedBox(
          height: 1000,
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  color: Colors.orange,
                  height: 100.0,
                  width: 100.0,
                  child: Center(
                    child: ElevatedButton(
                      child: const Text('Box 1'),
                      onPressed: () {},
                    ),
                  ),
                ),
                Container(
                  color: Colors.orange,
                  height: 100.0,
                  width: 100.0,
                  child: Center(
                    child: ElevatedButton(
                      child: const Text('Box 2'),
                      onPressed: () {},
                    ),
                  ),
                ),
                Container(
                  color: Colors.orange,
                  height: 100.0,
                  width: 100.0,
                  child: Center(
                    child: ElevatedButton(
                      child: const Text('Box 3'),
                      onPressed: () {},
                    ),
                  ),
                ),
              ]),
        ),
      ),
    );
  }
}
