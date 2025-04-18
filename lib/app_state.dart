import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _fotoPerfil = prefs.getString('ff_fotoPerfil') ?? _fotoPerfil;
    });
    _safeInit(() {
      _categoriasReceitas =
          prefs.getStringList('ff_categoriasReceitas') ?? _categoriasReceitas;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  String _fotoPerfil = '';
  String get fotoPerfil => _fotoPerfil;
  set fotoPerfil(String value) {
    _fotoPerfil = value;
    prefs.setString('ff_fotoPerfil', value);
  }

  List<String> _categoriasReceitas = [];
  List<String> get categoriasReceitas => _categoriasReceitas;
  set categoriasReceitas(List<String> value) {
    _categoriasReceitas = value;
    prefs.setStringList('ff_categoriasReceitas', value);
  }

  void addToCategoriasReceitas(String value) {
    categoriasReceitas.add(value);
    prefs.setStringList('ff_categoriasReceitas', _categoriasReceitas);
  }

  void removeFromCategoriasReceitas(String value) {
    categoriasReceitas.remove(value);
    prefs.setStringList('ff_categoriasReceitas', _categoriasReceitas);
  }

  void removeAtIndexFromCategoriasReceitas(int index) {
    categoriasReceitas.removeAt(index);
    prefs.setStringList('ff_categoriasReceitas', _categoriasReceitas);
  }

  void updateCategoriasReceitasAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    categoriasReceitas[index] = updateFn(_categoriasReceitas[index]);
    prefs.setStringList('ff_categoriasReceitas', _categoriasReceitas);
  }

  void insertAtIndexInCategoriasReceitas(int index, String value) {
    categoriasReceitas.insert(index, value);
    prefs.setStringList('ff_categoriasReceitas', _categoriasReceitas);
  }
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
