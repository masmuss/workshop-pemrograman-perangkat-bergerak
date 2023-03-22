import 'package:flutter/material.dart';
import 'package:test/model/western_band.dart';
import 'package:test/pages/m3/DetailScreen.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Western Band',
        )
      ),
      body: ListView.builder(
        scrollDirection: Axis.vertical,
        itemBuilder: (context, index) {
          final Band band = bandList[index];
          return InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return DetailScreen(band: band);
                }));
              },
              child: listItem(band)
          );
        },
        itemCount: bandList.length,
      )
    );
  }

  Widget listItem(Band band) {
    return Card(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget> [
          Expanded(
            flex: 1,
            child: Image.asset(band.imageAsset),
          ),
          Expanded(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: <Widget> [
                  Text(
                    band.name,
                    style: const TextStyle(fontSize: 16.0, fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(height: 10),
                  Text(band.genres, style: const TextStyle(fontSize: 12.0)),
                  Text(band.country, style: const TextStyle(fontSize: 12.0)),
                ],
              )
            ),
          ),
        ],
      ),
    );
  }
}