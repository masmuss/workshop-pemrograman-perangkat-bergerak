import 'package:flutter/material.dart';

class PercobaanTiga extends StatefulWidget {
  const PercobaanTiga({Key? key}) : super(key: key);

  @override
  State<PercobaanTiga> createState() => _PercobaanTigaState();
}

class _PercobaanTigaState extends State<PercobaanTiga> {
  int _counter = 0;
  String _text = 'Ganjil : ';

  void _increment() {
    setState(() {
      _counter++;

      if (_counter == 20) {
        _counter = 1;
        _text = 'Ganjil : ';
      }

      if (_counter % 2 != 0) {
        _text += '$_counter, ';
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Percobaan 3'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
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
