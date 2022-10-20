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
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: home(),
    );
  }
}

// ignore: camel_case_types
class home extends StatelessWidget {
  const home({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text('Solar system'),
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          const Text(
            'EARTH\n',
            textAlign: TextAlign.left,
            style: TextStyle(
              color: Colors.grey,
              fontSize: 20,
            ),
          ),
          const Image(
            image: AssetImage('images/earth.jpg'),
          ),
          Container(
            padding: const EdgeInsets.all(20),
            child: const Text(
              'Earth is our home planet. Scientists believe Earth and its moon'
              'formed around the same time as the rest of the solar system. '
              'They think that was about 4.5 billion years ago. Earth is the '
              'fifth-largest planet in the solar system'
              '\n\nIt is a common misconception that “Terra” is the '
              'internationally-recognized scientific name of the planet, but in'
              'reality Earth does not have an official international name. The '
              'standard English name of the planet, including in science, '
              'is “Earth”.',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 15,
              ),
            ),
          ),
          const Text(
            '\nSUN\n',
            style: TextStyle(color: Colors.grey, fontSize: 20),
          ),
          // ignore: sized_box_for_whitespace
          Container(
            width: double.infinity,
            child: Image.network(
              'https://images.wallpapersden.com/image/download/sun-4k_a2psZWaUmZqaraWkpJRqZWVlrWdtZWU.jpg',
              fit: BoxFit.contain,
            ),
          ),
          Container(
            padding: const EdgeInsets.all(20),
            child: const Text(
              'The Sun is a 4.5 billion-year-old yellow dwarf star – a hot '
              'glowing ball of hydrogen and helium – at the center of our solar '
              'system. It\'s about 93 million miles (150 million kilometers) '
              'from Earth and it\'s our solar system\'s only star. Without the '
              'Sun\'s energy, life as we know it could not exist on our '
              'home planet.'
              '\n\nThe sun is an ordinary star, one of about 100 '
              'billion in our galaxy, the Milky Way. The sun has extremely '
              'important influences on our planet: It drives weather, ocean '
              'currents, seasons, and climate, and makes plant life possible '
              'through photosynthesis. Without the sun\'s heat and light, '
              'life on Earth would not exist.',
              style: TextStyle(color: Colors.grey),
            ),
          ),
          Card(
            color: Colors.black,
            elevation: 10.0,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0)),
            // ignore: sized_box_for_whitespace
            child: Container(
              height: 150,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  const Padding(padding: EdgeInsets.all(20)),
                  ElevatedButton(
                    onPressed: () {
                      showModalBottomSheet(
                          context: context,
                          builder: (BuildContext context) {
                            return Container(
                              height: 200,
                              color: Colors.black,
                              padding: const EdgeInsets.all(20),
                              child: Column(
                                children: [
                                  const Text(
                                    'The Sun is the largest object in our'
                                    ' solar system. However, its size is average '
                                    'compared to other stars. The Sun is the centre '
                                    'of The Solar System, with all the other planets '
                                    'orbiting around it. About 1 million Earths could'
                                    'fit in the Sun.\n',
                                    style: TextStyle(
                                        color: Colors.grey, fontSize: 15),
                                  ),
                                  ElevatedButton(
                                    child: const Text('Close'),
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                  )
                                ],
                              ),
                            );
                          });
                    },
                    style:
                        ElevatedButton.styleFrom(backgroundColor: Colors.grey),
                    child: const Text(
                      'More details',
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
