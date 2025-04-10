import '../database.dart';

class FavoritosTable extends SupabaseTable<FavoritosRow> {
  @override
  String get tableName => 'favoritos';

  @override
  FavoritosRow createRow(Map<String, dynamic> data) => FavoritosRow(data);
}

class FavoritosRow extends SupabaseDataRow {
  FavoritosRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => FavoritosTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  String? get usuarioId => getField<String>('usuario_id');
  set usuarioId(String? value) => setField<String>('usuario_id', value);

  String? get receitaId => getField<String>('receita_id');
  set receitaId(String? value) => setField<String>('receita_id', value);

  DateTime? get criadoEm => getField<DateTime>('criado_em');
  set criadoEm(DateTime? value) => setField<DateTime>('criado_em', value);
}
