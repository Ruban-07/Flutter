import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  static const String _title = 'Ruban_mail';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: _title,
      home: MyStatefulWidget(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({super.key});

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Home',
      style: optionStyle,
    ),
    Text(
      'All Mails',
      style: optionStyle,
    ),
    Text(
      'Inbox',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(children: [
          Image.asset(
            'assets/images/gmail.webp',
            height: 30.0,
            width: 30.0,
          ),
          const SizedBox(width: 20),
          const Text('Gmail'),
        ]),
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      endDrawer: Drawer(
        elevation: 5,
        child: Column(
          children: const <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text('Ruban Raghavendar K'),
              accountEmail: Text('ruban@yavar.in'),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.white,
                child: Text('RRK'),
              ),
              otherAccountsPictures: [
                CircleAvatar(
                  backgroundColor: Colors.white,
                  child: Text('rr'),
                ),
              ],
            ),
            ListTile(
              title: Text('All Mails'),
              leading: Icon(Icons.mail),
            ),
            Divider(),
            ListTile(
              title: Text('Inbox Mails'),
              leading: Icon(Icons.inbox),
            ),
            Divider(),
            ListTile(
              title: Text('Social'),
              leading: Icon(Icons.people),
            ),
            Divider(),
            ListTile(
              title: Text('Promotion'),
              leading: Icon(Icons.local_offer),
            ),
            Divider(),
          ],
        ),
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {},
      //   child: const Icon(Icons.border_color_outlined),
      //   backgroundColor: Colors.amber,
      // ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.mail),
            label: 'All Mails',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.inbox),
            label: 'Inbox',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
}
