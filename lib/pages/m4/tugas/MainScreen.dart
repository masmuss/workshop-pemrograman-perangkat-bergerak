import 'package:flutter/material.dart';
import 'package:test/model/bands.dart';
import 'package:test/pages/m4/tugas/BandList.dart';
import 'package:test/pages/m4/tugas/done_listening.dart';

class MainScreen3 extends StatefulWidget {
  MainScreen3({Key? key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen3> {
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
                  return const DoneListening();
                }),
              );
            },
          )
        ],
      ),
      body: BandList()
    );
  }
}