import 'package:flutter/material.dart';

class Percobaan2 extends StatelessWidget {
  const Percobaan2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Container(
            margin: const EdgeInsets.only(top: 16.0),
            child: const Text(
              'Museum Kapal selam',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
            )),
        Container(
            padding: const EdgeInsets.all(16.0),
            child: const Text(
              'Monumen Kapal Selam, atau disingkat Monkasel, adalah sebuah museum kapal selam yang terdapat di Embong Kaliasin, Genteng, Surabaya. Terletak di pusat kota yaitu di Jalan Pemuda, tepat di sebelah Plaza Surabaya, dan terdapat pintu akses untuk mengakses mal dari dalam monumen.',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16.0),
            ))
      ],
    )));
  }
}
