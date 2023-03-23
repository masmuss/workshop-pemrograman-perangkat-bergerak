import 'package:flutter/material.dart';
import 'package:test/model/bands.dart';

class DoneListening extends StatelessWidget{
  final List<Band> doneListeningList;

  const DoneListening({
    Key? key,
    required this.doneListeningList,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Done Listening'),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          final Band done = doneListeningList[index];
          return Card(
            color: Colors.white60,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget> [
                Text(
                  done.name,
                  style: const TextStyle(fontSize: 16.0),
                ),
                const Icon(Icons.check_circle_outline),
              ]
            )
          );
        },
        itemCount: doneListeningList.length,
      ),
    );
  }
}