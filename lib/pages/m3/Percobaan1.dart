import 'package:flutter/material.dart';

class Percobaan1 extends StatelessWidget {
  const Percobaan1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget> [
                Container(
                    margin: const EdgeInsets.only(top: 16.0),
                    child: const Text(
                      'Museum Kapal selam',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 30.0,
                          fontWeight: FontWeight.bold
                      ),
                    )
                ),
              ],
            )
        )
    );
  }
}