import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool mon = false;
  bool tue = false;
  bool wed = false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Some Basics'),
        ),
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Mon'),
                  Checkbox(
                      value: mon,
                      onChanged: (bool? value) {
                        setState(() {
                          mon = value!;
                        });
                      }),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Tue'),
                  Checkbox(
                      value: tue,
                      onChanged: (bool? value) {
                        setState(() {
                          tue = value!;
                        });
                      }),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Wed'),
                  Checkbox(
                      value: wed,
                      onChanged: (bool? value) {
                        setState(() {
                          wed = value!;
                        });
                      }),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
