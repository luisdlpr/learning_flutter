import "package:flutter/material.dart";

class CounterPage extends StatefulWidget {
  const CounterPage({super.key});

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  int counterValue = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                icon: Icon(Icons.plus_one),
                onPressed: () {
                  setState(() {
                    counterValue++;
                  });
                },
              ),
              Text('Counter value at $counterValue'),
            ],
          ),
        ),
      ),
    );
  }
}
