import 'package:flutter/material.dart';

//stless
class CounterScreen extends StatefulWidget {

  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {

  int clickCounter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('App Contador'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
                '$clickCounter',
                style: const TextStyle(fontSize: 160, fontWeight: FontWeight.w100)
            ),
            Text(('Click${clickCounter == 1 ? '' : 's'}'), style: const TextStyle(fontSize: 25))
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          clickCounter++;
          setState(() {});

          /*setState(() {
            clickCounter ++;
          });*/
        },
        child: const Icon( Icons.plus_one ),
      ),
    );
  }
}
