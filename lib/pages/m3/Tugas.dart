import 'package:flutter/material.dart';

class Tugas extends StatelessWidget {
  const Tugas({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Image.asset('assets/images/kapal.jpg'),
                Container(
                    margin: const EdgeInsets.only(top: 16.0),
                    child: const Text(
                      'Museum Kapal selam',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontFamily: 'Lobster',
                          fontSize: 30.0,
                          fontWeight: FontWeight.bold
                      ),
                    )),
                Container(
                    margin: const EdgeInsets.symmetric(vertical: 16.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget> [
                        Column(
                          children: const <Widget> [
                            Icon(Icons.calendar_today),
                            Text('Open everyday')
                          ],
                        ),Column(
                          children: const <Widget> [
                            Icon(Icons.access_time_outlined),
                            Text('08.00 - 16.00')
                          ],
                        ),Column(
                          children: const <Widget> [
                            Icon(Icons.attach_money),
                            Text('Rp. 10.000')
                          ],
                        ),
                      ],
                    )
                ),
                Container(
                    padding: const EdgeInsets.all(16.0),
                    child: const Text(
                      'Monumen Kapal Selam, atau disingkat Monkasel, adalah sebuah museum kapal selam yang terdapat di Embong Kaliasin, Genteng, Surabaya. Terletak di pusat kota yaitu di Jalan Pemuda, tepat di sebelah Plaza Surabaya, dan terdapat pintu akses untuk mengakses mal dari dalam monumen.',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 16.0, fontFamily: 'Oxygen'),
                    )),
                Container(
                  height: 150,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget> [
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: ClipRRect(
                          borderRadius: const BorderRadius.all(Radius.circular(20.0)) ,
                          child: Image.network('https://media-cdn.tripadvisor.com/media/photo-m/1280/16/a9/33/43/liburan-di-farmhouse.jpg'),
                        )
                      )
                      ,Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: ClipRRect(
                          borderRadius: const BorderRadius.all(Radius.circular(20.0)) ,
                          child: Image.asset('assets/images/lp.jpeg'),
                        )
                      ),Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: ClipRRect(
                          borderRadius: const BorderRadius.all(Radius.circular(20.0)) ,
                          child: Image.network('https://sikidang.com/wp-content/uploads/Monumen-Kapal-Selam-Surabaya.jpg'),
                        )
                      ),
                    ],
                  ),
                )
              ],
            )));
  }
}
