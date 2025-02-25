import 'package:flutter/material.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  DateTime? _EndDate = DateTime.fromMillisecondsSinceEpoch(1694673000000);
  DateTime? get EndDate => _EndDate;
  set EndDate(DateTime? value) {
    _EndDate = value;
  }

  DateTime? _startDate = DateTime.fromMillisecondsSinceEpoch(1693549800000);
  DateTime? get startDate => _startDate;
  set startDate(DateTime? value) {
    _startDate = value;
  }
}
