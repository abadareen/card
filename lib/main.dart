import 'package:card/anmations.dart';
import 'package:card/awayAndinvisble.dart';
import 'package:card/card.dart';
import 'package:card/nextAndPrev.dart';
import 'package:card/profile.dart';
import 'package:card/travel.dart';
import 'package:flutter/material.dart';

import 'image_coursel.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
      debugShowCheckedModeBanner: false,
      routes: {
        '/card': (context) => Cardd(),
        '/anmations': (context) => Anmations(),
        '/profile': (context) => Profile(),
        '/image': (context) => Imagecour(),
        '/travel': (context) => Travel(),
        '/away': (context) => Away(),
        '/next': (context) => NextAndPrev(),
      },
    );
  }
}

class ProfilePage {}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // ignore: unused_element
  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.8,
        title: Text(
          'All project',
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 30, color: Colors.white),
        ),
        backgroundColor: Colors.lightBlue,
        centerTitle: true,
      ),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          Container(
            child: Column(
              children: [
                ListTile(
                  leading: Icon(
                    Icons.card_membership,
                    size: 25,
                  ),
                  title: InkWell(
                    onTap: () {
                      Navigator.of(context).pushNamed('/card');
                    },
                    child: Text('Card',
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold)),
                  ),
                ),
                Divider(
                  thickness: 5,
                  color: Colors.red,
                ),
                ListTile(
                  leading: Icon(
                    Icons.animation,
                    size: 25,
                  ),
                  title: InkWell(
                    onTap: () {
                      Navigator.pushNamed((context), '/anmations');
                    },
                    child: Text('anmations',
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold)),
                  ),
                ),
                Divider(
                  color: Colors.red,
                  thickness: 5,
                ),
                ListTile(
                  leading: Icon(
                    Icons.food_bank_sharp,
                    size: 30,
                  ),
                  title: InkWell(
                    onTap: () {
                      Navigator.pushNamed((context), '/image');
                    },
                    child: Text('Image coursel',
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold)),
                  ),
                ),
                Divider(
                  color: Colors.red,
                  thickness: 5,
                ),
                ListTile(
                  leading: Icon(
                    Icons.person,
                    size: 25,
                  ),
                  title: InkWell(
                    onTap: () {
                      Navigator.pushNamed((context), '/profile');
                    },
                    child: Text('Profile',
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold)),
                  ),
                ),
                Divider(
                  color: Colors.red,
                  thickness: 5,
                ),
                ListTile(
                  leading: Icon(
                    Icons.signal_cellular_off_sharp,
                    size: 25,
                  ),
                  title: InkWell(
                    onTap: () {
                      Navigator.pushNamed((context), '/signup');
                    },
                    child: Text('Signup',
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold)),
                  ),
                ),
                Divider(
                  color: Colors.red,
                  thickness: 5,
                ),
                ListTile(
                  leading: Icon(
                    Icons.travel_explore,
                    size: 25,
                  ),
                  title: InkWell(
                    onTap: () {
                      Navigator.pushNamed((context), '/travel');
                    },
                    child: Text('Travel',
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold)),
                  ),
                ),
                ListTile(
                  leading: Icon(
                    Icons.offline_bolt,
                    size: 25,
                  ),
                  title: InkWell(
                    onTap: () {
                      Navigator.pushNamed((context), '/away');
                    },
                    child: Text('away',
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold)),
                  ),
                ),
                ListTile(
                  leading: Icon(
                    Icons.travel_explore,
                    size: 25,
                  ),
                  title: InkWell(
                    onTap: () {
                      Navigator.pushNamed((context), '/next');
                    },
                    child: Text('Next',
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold)),
                  ),
                ),
                // ListTile(
                //   leading: Icon(
                //     Icons.travel_explore,
                //     size: 25,
                //   ),
                //   title: Text('Travellll',
                //       style:
                //           TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
                // ),
                // ListTile(
                //   leading: Icon(
                //     Icons.travel_explore,
                //     size: 25,
                //   ),
                //   title: Text('Travellll',
                //       style:
                //           TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
                // ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
