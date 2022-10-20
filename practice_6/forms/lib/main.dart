import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String _value = '';
  var valueTwo = '';

  void _onChanged(String value) {
    setState(() {
      _value = 'On Type: $value';
    });
  }

  void _onSubmited(String value) {
    setState(() {
      _value = 'On Submit: $value';
    });
  }

  void _onChangedTwo(var value) {
    setState(() {
      valueTwo = 'On Type: $value';
    });
  }

  void _onSubmitTwo(var value) {
    setState(() {
      valueTwo = 'On Submit: $value';
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('TextField'),
        ),
        body: Column(
          children: [
            Text(_value),
            TextField(
              autocorrect: true,
              decoration: const InputDecoration(
                labelText: 'Enter Name',
                hintText: 'Example: Ruban',
                icon: Icon(Icons.people),
              ),
              onChanged: _onChanged,
              onSubmitted: _onSubmited,
            ),
            Text(valueTwo),
            TextField(
              decoration: const InputDecoration(
                labelText: 'Enter Mobile number',
                hintText: 'Example: 1234567890',
                icon: Icon(Icons.phone_android),
              ),
              onChanged: _onChangedTwo,
              onSubmitted: _onSubmitTwo,
              keyboardType: TextInputType.number,
            ),
          ],
        ),
      ),
    );
  }
}
