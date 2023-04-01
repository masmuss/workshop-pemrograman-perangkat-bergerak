import 'package:flutter/material.dart';
import 'package:test/model/bands.dart';
import 'package:test/pages/m4/percobaan2/BandList.dart';
import 'package:test/pages/m4/percobaan2/done_listening.dart';

class MainScreen2 extends StatefulWidget {
  MainScreen2({Key? key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen2> {
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