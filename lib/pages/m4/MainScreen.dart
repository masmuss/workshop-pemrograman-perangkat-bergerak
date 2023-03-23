import 'package:flutter/material.dart';
import 'package:test/model/bands.dart';
import 'package:test/pages/m4/BandList.dart';
import 'package:test/pages/m4/done_listening.dart';

class MainScreen extends StatefulWidget {
  MainScreen({Key? key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final List<Band> doneListening = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Western Band'),
        actions: <Widget> [
          IconButton(
            icon: const Icon(Icons.done_outlined),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) {
                  return DoneListening(doneListeningList: doneListening);
                }),
              );
            },
          )
        ],
      ),
      body: BandList(doneListening: doneListening)
    );
  }
}