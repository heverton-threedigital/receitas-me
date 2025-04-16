import 'package:flutter/material.dart';
import 'flutter_flow/request_manager.dart';
import 'backend/supabase/supabase.dart';
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

  final _categoriasManager = FutureRequestManager<List<CategoriasRow>>();
  Future<List<CategoriasRow>> categorias({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Future<List<CategoriasRow>> Function() requestFn,
  }) =>
      _categoriasManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearCategoriasCache() => _categoriasManager.clear();
  void clearCategoriasCacheKey(String? uniqueKey) =>
      _categoriasManager.clearRequest(uniqueKey);
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
