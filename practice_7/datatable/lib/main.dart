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
          title: const Text('Data Table'),
        ),
        body: DataTable(
          columns: const [
            DataColumn(
                label: Text(
              'Roll No',
              style: TextStyle(color: Colors.orange),
            )),
            DataColumn(
                label: Text(
              'Name',
              style: TextStyle(color: Colors.orange),
            )),
            DataColumn(
                label: Text(
              'Gender',
              style: TextStyle(color: Colors.orange),
            )),
            DataColumn(
                label: Text(
              'Age',
              style: TextStyle(color: Colors.orange),
            )),
          ],
          rows: const [
            DataRow(cells: [
              DataCell(Text('1922JA32')),
              DataCell(Text('Ruban')),
              DataCell(Text('Male')),
              DataCell(Text('22')),
            ]),
            DataRow(cells: [
              DataCell(Text('1922JA33')),
              DataCell(Text('Rohith')),
              DataCell(Text('Male')),
              DataCell(Text('23')),
            ]),
            DataRow(cells: [
              DataCell(Text('1922JA34')),
              DataCell(Text('Yasif')),
              DataCell(Text('Male')),
              DataCell(Text('24')),
            ]),
            DataRow(cells: [
              DataCell(Text('1922JA35')),
              DataCell(Text('Norrul')),
              DataCell(Text('Male')),
              DataCell(Text('21')),
            ]),
            DataRow(cells: [
              DataCell(Text('1922JA36')),
              DataCell(Text('deepak')),
              DataCell(Text('Male')),
              DataCell(Text('24')),
            ]),
            DataRow(cells: [
              DataCell(Text('1922JA37')),
              DataCell(Text('Giri')),
              DataCell(Text('Male')),
              DataCell(Text('23')),
            ]),
            DataRow(cells: [
              DataCell(Text('1922JA30')),
              DataCell(Text('Sanjay')),
              DataCell(Text('Male')),
              DataCell(Text('22')),
            ]),
            DataRow(cells: [
              DataCell(Text('1922JA38')),
              DataCell(Text('Nirmal')),
              DataCell(Text('Male')),
              DataCell(Text('25')),
            ]),
            DataRow(cells: [
              DataCell(Text('1922JA07')),
              DataCell(Text('Arthi')),
              DataCell(Text('Male')),
              DataCell(Text('21')),
            ]),
            DataRow(cells: [
              DataCell(Text('1922JA40')),
              DataCell(Text('Boopalan')),
              DataCell(Text('Male')),
              DataCell(Text('30')),
            ]),
          ],
        ),
      ),
    );
  }
}
