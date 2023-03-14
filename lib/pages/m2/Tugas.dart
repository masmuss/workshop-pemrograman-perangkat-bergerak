import 'package:flutter/material.dart';

class Tugas extends StatefulWidget {
  const Tugas({Key? key}) : super(key: key);

  @override
  State<Tugas> createState() => _TugasState();
}

class _TugasState extends State<Tugas> {
  int _counter = 0;
  String _text = 'Prima mulai 1 sampai n : ';
  int count = 0;

  void _increment() {
    setState(() {
      _counter++;
      _text = 'Prima mulai 1 sampai n : ';
      for (int i = 1; i <= _counter; i++) {
        count = 0;
        for (int j = 1; j <= i; j++) {
          if (i % j == 0) {
            count++;
          }
        }
        if (count == 2) {
          _text += "$i, ";
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tugas'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('$_counter'),
            Text(_text),
            ElevatedButton(
              onPressed: _increment,
              child: const Text('Increment'),
            ),
          ],
        ),
      ),
    );
  }
}