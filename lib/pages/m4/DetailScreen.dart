import 'package:flutter/material.dart';
import 'package:test/model/bands.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({Key? key, required this.band}) : super(key: key);

  final Band band;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Image.asset(band.imageAsset),
        Container(
            margin: const EdgeInsets.only(top: 16.0),
            child: Text(
              band.name,
              textAlign: TextAlign.center,
              style: const TextStyle(
                  fontFamily: 'Lobster',
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold),
            )),
        Container(
            margin: const EdgeInsets.only(top: 16.0),
            child: Text(
              band.genres,
              textAlign: TextAlign.center,
            )),
        Container(
            margin: const EdgeInsets.symmetric(vertical: 16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    const Icon(Icons.date_range),
                    Text(band.date)
                  ],
                ),
                Column(
                  children: <Widget>[
                    const Icon(Icons.place),
                    Text(
                      band.country,
                    ),
                  ],
                ),
              ],
            )),
        Container(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              band.detail,
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 16.0, fontFamily: 'Oxygen'),
            )),
        Container(
          height: 150,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              for (var i = 0; i < band.albums.length; i++)
                Container(
                  width: 110,
                  child: Column(
                    children: <Widget>[
                      Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: ClipRRect(
                            borderRadius:
                                const BorderRadius.all(Radius.circular(20.0)),
                            child: Image.asset(
                              band.albums[i].imageAsset,
                              width: 100,
                              height: 100,
                              fit: BoxFit.cover,
                            ),
                          )),
                      Padding(
                        padding: const EdgeInsets.only(left: 4.0, right: 4.0),
                        child: Text(
                          band.albums[i].name,
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 4.0, right: 4.0),
                        child: Text(band.albums[i].year),
                      ),
                    ],
                  ),
                ),
            ],
          ),
        )
      ],
    )));
  }
}
