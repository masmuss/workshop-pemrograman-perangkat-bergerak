import 'package:flutter/material.dart';
import 'package:test/model/bands.dart';

class ListItem extends StatelessWidget{
  final Band band;
  final bool isDone;
  final Function(bool? value) onCheckboxClick;

  const ListItem({
    Key? key,
    required this.band,
    required this.isDone,
    required this.onCheckboxClick,
  }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Card(
      color: isDone ? Colors.white60 : Colors.white,
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
          Checkbox(checkColor: Colors.indigoAccent, value: isDone, onChanged: onCheckboxClick)
        ],
      ),
    );
  }
}