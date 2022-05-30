import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // Define the default brightness and colors.
        brightness: Brightness.dark,
        primaryColor: Colors.lightBlue[800],

        // Define the default font family.
        fontFamily: 'Georgia',

        // Define the default `TextTheme`. Use this to specify the default
        // text styling for headlines, titles, bodies of text, and more.
        textTheme: const TextTheme(
          headline1: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
          headline6: TextStyle(fontSize: 36.0, fontStyle: FontStyle.italic),
          bodyText2: TextStyle(fontSize: 14.0, fontFamily: 'Hind'),
        ),
      ),
      home: BelajarNavBar(),
    );
  }
}

class BelajarNavBar extends StatefulWidget {
  @override
  _BelajarNavBarState createState() => _BelajarNavBarState();
}

class _BelajarNavBarState extends State<BelajarNavBar> {
  // Discord
  int _selectedNavbar = 0;
  List<Widget> _pages = <Widget>[
    Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage('https://cdn.pixabay.com/photo/2020/10/04/18/13/mountains-5627143_1280.jpg'),
          fit: BoxFit.fitHeight,
        ),
      ),
    ),
    Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage('https://images.pexels.com/photos/11906724/pexels-photo-11906724.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500'),
          fit: BoxFit.fitHeight,
        ),
      ),
    ),
    Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage('https://images.pexels.com/photos/11661713/pexels-photo-11661713.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500'),
          fit: BoxFit.fitHeight,
        ),
      ),
    ),
  ];

  void _changeSelectedNavBar(int index) {
    setState(() {
      _selectedNavbar = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Belajar Nav Bar",
          style: TextStyle(
            fontSize: 24,
          ),
        ),
      ),
      body: Center(
        child: _pages.elementAt(_selectedNavbar),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.call),
            label: ('Calls'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.camera),
            label: ('Camera'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat),
            label: ('Chats'),
          ),
        ],
        currentIndex: _selectedNavbar,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.black54,
        showUnselectedLabels: true,
        onTap: _changeSelectedNavBar,
      ),
    );
  }
}
