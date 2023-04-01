import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test/model/bands.dart';
import 'package:test/provider/done_listening.dart';

class DoneListening extends StatelessWidget{
  const DoneListening({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<Band> doneListeningList = Provider.of<DoneListeningProvider>(
      context,
      listen: false,
    ).doneListening;

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