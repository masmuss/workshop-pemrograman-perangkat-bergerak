import 'package:flutter/material.dart';

class PercobaanSatu extends StatefulWidget{
  const PercobaanSatu({Key? key}) : super(key: key);

  @override
  State<PercobaanSatu> createState() => _PercobaanSatuState();
}

class _PercobaanSatuState extends State<PercobaanSatu> {
  int _counter = 1;

  void _increment() {
    setState(() {
      _counter++;

      _counter = _counter == 10 ? 1 : _counter;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Percobaan 1'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('you have pushed the button this many times:'),
            Text('$_counter'),
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