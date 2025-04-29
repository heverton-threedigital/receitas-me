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
    _safeInit(() {
      _nomeUsuario = prefs.getString('ff_nomeUsuario') ?? _nomeUsuario;
    });
    _safeInit(() {
      _usuario = prefs.getString('ff_usuario') ?? _usuario;
    });
    _safeInit(() {
      _sobrenomeUsuario =
          prefs.getString('ff_sobrenomeUsuario') ?? _sobrenomeUsuario;
    });
    _safeInit(() {
      _barraLateral = prefs.getBool('ff_barraLateral') ?? _barraLateral;
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

  bool _receitaSalva = false;
  bool get receitaSalva => _receitaSalva;
  set receitaSalva(bool value) {
    _receitaSalva = value;
  }

  String _fotoPefil = '';
  String get fotoPefil => _fotoPefil;
  set fotoPefil(String value) {
    _fotoPefil = value;
    prefs.setString('ff_fotoPefil', value);
  }

  String _nomeUsuario = '';
  String get nomeUsuario => _nomeUsuario;
  set nomeUsuario(String value) {
    _nomeUsuario = value;
    prefs.setString('ff_nomeUsuario', value);
  }

  String _usuario = '';
  String get usuario => _usuario;
  set usuario(String value) {
    _usuario = value;
    prefs.setString('ff_usuario', value);
  }

  String _sobrenomeUsuario = '';
  String get sobrenomeUsuario => _sobrenomeUsuario;
  set sobrenomeUsuario(String value) {
    _sobrenomeUsuario = value;
    prefs.setString('ff_sobrenomeUsuario', value);
  }

  bool _barraLateral = false;
  bool get barraLateral => _barraLateral;
  set barraLateral(bool value) {
    _barraLateral = value;
    prefs.setBool('ff_barraLateral', value);
  }

  int _ingredientes = 0;
  int get ingredientes => _ingredientes;
  set ingredientes(int value) {
    _ingredientes = value;
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
