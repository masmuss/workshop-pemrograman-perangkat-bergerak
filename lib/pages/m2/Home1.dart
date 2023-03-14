import 'package:flutter/material.dart';
import 'package:test/pages/m2/PercobaanSatu.dart';
import 'package:test/pages/m2/PercobaanDua.dart';
import 'package:test/pages/m2/PercobaanTiga.dart';
import 'package:test/pages/m2/Latihan.dart';
import 'package:test/pages/m2/Tugas.dart';

class Home1 extends StatefulWidget{
  const Home1({Key? key}) : super(key: key);

  @override
  State<Home1> createState() => _HomeState();
}

class _HomeState extends State<Home1> {
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
                        builder: (context) => const PercobaanSatu(),
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
                        builder: (context) => const PercobaanDua(),
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
                        builder: (context) => const PercobaanTiga(),
                      ),
                    );
                  },
                  child: const Text('Percobaan 3'),
                ),
              ),Container(
                margin: const EdgeInsets.all(10),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Latihan(),
                      ),
                    );
                  },
                  child: const Text('Latihan'),
                ),
              ),Container(
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}
