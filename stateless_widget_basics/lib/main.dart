import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // no internal / dynamic data
  const MyApp({Key? key}) : super(key: key);

  // @override
  // Widget build(BuildContext context) {
  //   return MaterialApp(
  //       home: Scaffold(
  //     appBar: AppBar(
  //       backgroundColor: Colors.amber,
  //       title: const Text('Flutter is fun!'),
  //     ),
  //   ));
  // }

  // @override
  // Widget build(BuildContext context) {
  //   return MaterialApp(
  //       home: Scaffold(
  //           appBar: AppBar(
  //             backgroundColor: Colors.amber,
  //             title: const Text('Flutter is fun!'),
  //           ),
  //           body: Container(
  //             margin: const EdgeInsets.all(50),
  //             padding: const EdgeInsets.all(10),
  //             height: 100,
  //             width: 100,
  //             decoration: const BoxDecoration(
  //                 border: Border(
  //                     bottom: BorderSide(color: Colors.black, width: 1.0),
  //                     left: BorderSide(color: Colors.black, width: 1.0),
  //                     top: BorderSide(color: Colors.black, width: 1.0),
  //                     right: BorderSide(color: Colors.black, width: 1.0))),
  //             child: const Text('Hello World'),
  //           )));
  // }

  // @override
  // Widget build(BuildContext context) {
  //   return MaterialApp(
  //       home: Scaffold(
  //           appBar: AppBar(
  //             backgroundColor: Colors.amber,
  //             title: const Text('Flutter is fun!'),
  //           ),
  //           // body: Column(
  //           body: const Row(
  //             mainAxisAlignment: MainAxisAlignment.center,
  //             children: [
  //               Expanded(
  //                 flex: 2,
  //                 child: Icon(Icons.backpack),
  //               ),
  //               Icon(Icons.leaderboard),
  //               Icon(Icons.person),
  //             ],
  //           )));
  // }

  // @override
  // Widget build(BuildContext context) {
  //   return MaterialApp(
  //     home: Scaffold(
  //       appBar: AppBar(
  //         backgroundColor: Colors.amber,
  //         title: const Text('Flutter is fun!'),
  //       ),
  //       // body: Column(
  //       body: Stack(
  //         children: [
  //           Container(
  //             color: Colors.amber,
  //             width: 100,
  //             height: 100,
  //           ),
  //           Positioned(
  //             child: Icon(Icons.verified),
  //             top: 25,
  //             left: 25,
  //           ), // icon after container will appear ontop
  //         ],
  //       ),
  //     ),
  //   );
  // }

  // SCAFFOLD MAGIC WIDGETS
  // @override
  // Widget build(BuildContext context) {
  //   return MaterialApp(
  //     home: Scaffold(
  //       appBar: AppBar(
  //         backgroundColor: Colors.amber,
  //         title: const Text('Flutter is fun!'),
  //       ),
  //       floatingActionButton: FloatingActionButton(
  //         child: Icon(Icons.add),
  //         onPressed: () {
  //           print('Pressed');
  //         },
  //       ),
  //       body: ListView( // useful for scrolling
  //           scrollDirection: Axis.horizontal,
  //           addAutomaticKeepAlives: false,
  //           children: [
  //             Container(color: Colors.blue, width: 500, height: 5000),
  //             Container(color: Colors.red, width: 500, height: 5000),
  //             Container(color: Colors.yellow, width: 500, height: 5000),
  //           ]),
  //       bottomNavigationBar: BottomNavigationBar(items: const [
  //         BottomNavigationBarItem(
  //           icon: Icon(Icons.home),
  //           label: 'Home',
  //         ),
  //         BottomNavigationBarItem(
  //           icon: Icon(Icons.business),
  //           label: 'Business',
  //         ),
  //         BottomNavigationBarItem(
  //           icon: Icon(Icons.school),
  //           label: 'School',
  //         ),
  //       ]),
  //       drawer: Drawer(),
  //     ),
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.amber,
          title: const Text('Flutter is fun!'),
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {
            print('Pressed');
          },
        ),
        body: ListView.builder(
          // builder like map?
          itemBuilder: (_, index) {
            return Container(
              color: [Colors.red, Colors.blue, Colors.green][index % 3],
              width: 500,
              height: 500,
            );
          },
        ),
        bottomNavigationBar: BottomNavigationBar(items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Business',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'School',
          ),
        ]),
        drawer: Drawer(),
      ),
    );
  }
}
