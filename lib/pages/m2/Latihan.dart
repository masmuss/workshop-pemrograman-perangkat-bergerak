import 'package:flutter/material.dart';

class Latihan extends StatefulWidget {
  const Latihan({Key? key}) : super(key: key);

  @override
  State<Latihan> createState() => _LatihanState();
}

class _LatihanState extends State<Latihan> {
  int _counter = 0;
  String _text = 'Genap kelipatan 3 : ';

  void _increment() {
    setState(() {
      _counter++;

      if (_counter == 20) {
        _counter = 1;
        _text = 'Genap kelipatan 3 : ';
      }

      if (_counter % 2 == 0 && _counter % 3 == 0) {
        _text += '$_counter, ';
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Latihan'),
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