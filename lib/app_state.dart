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
      _categoriasReceitas =
          prefs.getStringList('ff_categoriasReceitas') ?? _categoriasReceitas;
    });
    _safeInit(() {
      _corfirmarConta = prefs.getBool('ff_corfirmarConta') ?? _corfirmarConta;
    });
    _safeInit(() {
      _fotoPefil = prefs.getString('ff_fotoPefil') ?? _fotoPefil;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

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

  List<String> _ingredientes = [];
  List<String> get ingredientes => _ingredientes;
  set ingredientes(List<String> value) {
    _ingredientes = value;
  }

  void addToIngredientes(String value) {
    ingredientes.add(value);
  }

  void removeFromIngredientes(String value) {
    ingredientes.remove(value);
  }

  void removeAtIndexFromIngredientes(int index) {
    ingredientes.removeAt(index);
  }

  void updateIngredientesAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    ingredientes[index] = updateFn(_ingredientes[index]);
  }

  void insertAtIndexInIngredientes(int index, String value) {
    ingredientes.insert(index, value);
  }

  List<String> _passos = [];
  List<String> get passos => _passos;
  set passos(List<String> value) {
    _passos = value;
  }

  void addToPassos(String value) {
    passos.add(value);
  }

  void removeFromPassos(String value) {
    passos.remove(value);
  }

  void removeAtIndexFromPassos(int index) {
    passos.removeAt(index);
  }

  void updatePassosAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    passos[index] = updateFn(_passos[index]);
  }

  void insertAtIndexInPassos(int index, String value) {
    passos.insert(index, value);
  }

  int _contador = -1;
  int get contador => _contador;
  set contador(int value) {
    _contador = value;
  }

  int _passoAtual = 1;
  int get passoAtual => _passoAtual;
  set passoAtual(int value) {
    _passoAtual = value;
  }

  bool _corfirmarConta = false;
  bool get corfirmarConta => _corfirmarConta;
  set corfirmarConta(bool value) {
    _corfirmarConta = value;
    prefs.setBool('ff_corfirmarConta', value);
  }

  bool _ReceitaSalva = false;
  bool get ReceitaSalva => _ReceitaSalva;
  set ReceitaSalva(bool value) {
    _ReceitaSalva = value;
  }

  String _fotoPefil = '';
  String get fotoPefil => _fotoPefil;
  set fotoPefil(String value) {
    _fotoPefil = value;
    prefs.setString('ff_fotoPefil', value);
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
