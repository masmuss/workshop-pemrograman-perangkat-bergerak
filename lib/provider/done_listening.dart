import 'package:flutter/foundation.dart';
import 'package:test/model/bands.dart';

class DoneListeningProvider extends ChangeNotifier {
  final List<Band> _doneListening = [];

  List<Band> get doneListening => _doneListening;

  void complete(Band band, bool isDone) {
    isDone
        ? _doneListening.add(band)
        : _doneListening.remove(band);
    notifyListeners();
  }
}