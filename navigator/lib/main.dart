import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: PageOne(),
      routes: {
        '/pagetwo': (context) => PageTwo(),
      },
    );
  }
}

class PageOne extends StatefulWidget {
  PageOne({super.key});

  @override
  State<PageOne> createState() => _PageOneState();
}

class _PageOneState extends State<PageOne> {
  int selectedPage = 0;

  final List pages = [
    PageThree(),
    PageTwo(),
  ];

  void navigateThroughBottomBar(int index) {
    setState(() {
      selectedPage = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        title: const Text('One'),
      ),
      // body: ElevatedButton(
      //   child: Text('Navigate'),
      //   onPressed: () {
      //     // Navigator.push(
      //     //     context,
      //     //     MaterialPageRoute(
      //     //       builder: (context) => PageTwo(),
      //     //     ));
      //     Navigator.pushNamed(context, '/pagetwo');
      //   },
      // ),
      body: pages[selectedPage],
      drawer: Drawer(
          backgroundColor: Colors.amber,
          child: Column(
            children: [
              DrawerHeader(child: Icon(Icons.favorite, size: 48)),
              ListTile(
                  leading: Icon(Icons.home),
                  title: Text('Home'),
                  onTap: () {
                    Navigator.pop(context); // close drawer
                    Navigator.pushNamed(context, '/pagetwo');
                  }),
              ListTile(
                  leading: Icon(Icons.settings),
                  title: Text('Settings'),
                  onTap: () {
                    Navigator.pop(context); // close drawer
                    Navigator.pushNamed(context, '/pagetwo');
                  }),
            ],
          )),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: selectedPage,
          onTap: navigateThroughBottomBar,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings), label: 'Settings'),
          ]),
    );
  }
}

class PageTwo extends StatelessWidget {
  const PageTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        title: const Text('Two'),
      ),
      body: ElevatedButton(
        child: Text('Navigate'),
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => PageTwo(),
              ));
        },
      ),
    );
  }
}

class PageThree extends StatelessWidget {
  const PageThree({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        title: const Text('Three'),
      ),
      body: ElevatedButton(
        child: Text('Navigate'),
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => PageTwo(),
              ));
        },
      ),
    );
  }
}
