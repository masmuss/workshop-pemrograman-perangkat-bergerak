import 'package:flutter/material.dart';
import 'package:test/pages/m4/MainScreen.dart';
import 'package:test/pages/m4/percobaan2/MainScreen.dart';
import 'package:test/pages/m4/tugas/MainScreen.dart';

class Home4 extends StatefulWidget{
  const Home4({Key? key}) : super(key: key);

  @override
  State<Home4> createState() => _HomeState();
}

class _HomeState extends State<Home4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Minggu 4'),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                margin: const EdgeInsets.all(10),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => MainScreen(),
                      ),
                    );
                  },
                  child: const Text('Percobaan 1'),
                ),
              ),
              Container(
                margin: const EdgeInsets.all(10),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => MainScreen2(),
                      ),
                    );
                  },
                  child: const Text('Percobaan 2'),
                ),
              ),Container(
                margin: const EdgeInsets.all(10),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => MainScreen3(),
                      ),
                    );
                  },
                  child: const Text('Tugas'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
