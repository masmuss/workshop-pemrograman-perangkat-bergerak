import 'package:flutter/material.dart';

class PercobaanDua extends StatefulWidget {
  const PercobaanDua({Key? key}) : super(key: key);

  @override
  State<PercobaanDua> createState() => _PercobaanDuaState();
}

class _PercobaanDuaState extends State<PercobaanDua> {
  int _counter = 1;
  String _text = 'Ganjil';

  void _increment() {
    setState(() {
      _counter++;

      _counter = _counter == 10 ? 1 : _counter;

      if (_counter % 2 == 0) {
        _text = 'Genap';
      } else {
        _text = 'Ganjil';
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Percobaan 2'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('you have pushed the button this many times:'),
            Text('$_counter'),
            Text('$_text'),
            TextButton(
              onPressed: _increment,
              child: const Text('Increment'),
            ),
          ],
        ),
      ),
    );
  }
}
