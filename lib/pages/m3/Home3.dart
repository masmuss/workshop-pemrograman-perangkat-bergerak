import 'package:flutter/material.dart';
import 'package:test/pages/m3/Latihan1.dart';
import 'package:test/pages/m3/MainScreen.dart';
import 'package:test/pages/m3/Percobaan1.dart';
import 'package:test/pages/m3/Percobaan2.dart';
import 'package:test/pages/m3/Percobaan3.dart';
import 'package:test/pages/m3/Percobaan4.dart';
import 'package:test/pages/m3/Percobaan5.dart';
import 'package:test/pages/m3/Tugas.dart';

class Home3 extends StatefulWidget{
  const Home3({Key? key}) : super(key: key);

  @override
  State<Home3> createState() => _HomeState();
}

class _HomeState extends State<Home3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Minggu 2'),
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
                        builder: (context) => const Percobaan1(),
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
                        builder: (context) => const Percobaan2(),
                      ),
                    );
                  },
                  child: const Text('Percobaan 2'),
                ),
              ),
              Container(
                margin: const EdgeInsets.all(10),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Percobaan3(),
                      ),
                    );
                  },
                  child: const Text('Percobaan 3'),
                ),
              ),
              Container(
                margin: const EdgeInsets.all(10),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Percobaan4(),
                      ),
                    );
                  },
                  child: const Text('Percobaan 4'),
                ),
              ),
              Container(
                margin: const EdgeInsets.all(10),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Percobaan5(),
                      ),
                    );
                  },
                  child: const Text('Percobaan 5'),
                ),
              ),
              Container(
                margin: const EdgeInsets.all(10),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Latihan1(),
                      ),
                    );
                  },
                  child: const Text('Latihan'),
                ),
              ),
              Container(
                margin: const EdgeInsets.all(10),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Tugas(),
                      ),
                    );
                  },
                  child: const Text('Tugas'),
                ),
              ),Container(
                margin: const EdgeInsets.all(10),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const MainScreen(),
                      ),
                    );
                  },
                  child: const Text('Tugas 2'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
