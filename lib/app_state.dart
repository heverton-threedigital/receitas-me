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
      _imagemPerfil = prefs.getString('ff_imagemPerfil') ?? _imagemPerfil;
    });
    _safeInit(() {
      _categorias = prefs.getStringList('ff_categorias') ?? _categorias;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  String _imagemPerfil = '';
  String get imagemPerfil => _imagemPerfil;
  set imagemPerfil(String value) {
    _imagemPerfil = value;
    prefs.setString('ff_imagemPerfil', value);
  }

  List<String> _categorias = [];
  List<String> get categorias => _categorias;
  set categorias(List<String> value) {
    _categorias = value;
    prefs.setStringList('ff_categorias', value);
  }

  void addToCategorias(String value) {
    categorias.add(value);
    prefs.setStringList('ff_categorias', _categorias);
  }

  void removeFromCategorias(String value) {
    categorias.remove(value);
    prefs.setStringList('ff_categorias', _categorias);
  }

  void removeAtIndexFromCategorias(int index) {
    categorias.removeAt(index);
    prefs.setStringList('ff_categorias', _categorias);
  }

  void updateCategoriasAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    categorias[index] = updateFn(_categorias[index]);
    prefs.setStringList('ff_categorias', _categorias);
  }

  void insertAtIndexInCategorias(int index, String value) {
    categorias.insert(index, value);
    prefs.setStringList('ff_categorias', _categorias);
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
