import 'package:flutter/material.dart';
import 'package:test/model/tourism_place.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({Key? key, required this.place}) : super(key: key);

  final TourismPlace place;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Image.asset(place.imageAsset),
        Container(
            margin: const EdgeInsets.only(top: 16.0),
            child: Text(
              place.name,
              textAlign: TextAlign.center,
              style: const TextStyle(
                  fontFamily: 'Lobster',
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold),
            )),
        Container(
            margin: const EdgeInsets.symmetric(vertical: 16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    const Icon(Icons.calendar_today),
                    Text(place.openOn)
                  ],
                ),
                Column(
                  children: <Widget>[
                    const Icon(Icons.access_time_outlined),
                    Text(place.openAt)
                  ],
                ),
                Column(
                  children: <Widget>[
                    const Icon(Icons.attach_money),
                    Text(place.price)
                  ],
                ),
              ],
            )),
        Container(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              place.detail,
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 16.0, fontFamily: 'Oxygen'),
            )),
        Container(
          height: 150,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              for (var i = 0; i < place.gallery.length; i++)
                Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: ClipRRect(
                      borderRadius:
                          const BorderRadius.all(Radius.circular(20.0)),
                      child: Image.asset(place.gallery[i]),
                    )),
            ],
          ),
        )
      ],
    )));
  }
}
