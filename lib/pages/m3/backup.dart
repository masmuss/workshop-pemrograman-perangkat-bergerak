import 'package:flutter/material.dart';
import 'package:test/model/tourism_place.dart';

class Home3 extends StatelessWidget{
  const Home3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Minggu 3'),
        ),
        body: ListView.builder(
          itemBuilder: (context, index) {
            final TourismPlace place = tourismPlaceLists[index];
            return InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return DetailScreen(place: place);
                  }));
                },
                child: listItem(place)
            );
          },
          itemCount: tourismPlaceLists.length,
        )
    );
  }

  Widget listItem(TourismPlace place) {
    return Card(
        child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget> [
              Expanded(
                  flex: 1,
                  child: Image.asset(place.imageAsset)
              ),
              Expanded(
                  flex: 2,
                  child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget> [
                          Text(
                            place.name,
                            style: TextStyle(fontSize: 16.0),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(place.location)
                        ],
                      )
                  )
              )
            ]
        )
    );
  }
}

class DetailScreen extends StatelessWidget {
  const DetailScreen({Key? key, required this.place}) : super(key: key);

  final TourismPlace place;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget> [
                Image.asset(place.imageAsset),
                Container(
                    margin: const EdgeInsets.only(top: 16.0),
                    child: Text(
                      place.name,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                          fontSize: 30.0,
                          fontFamily: 'Lobster'
                      ),
                    )
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [],
                )
              ],
            )
        )
    );
  }
}

