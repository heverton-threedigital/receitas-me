import '../database.dart';

class ReceitasSalvasTable extends SupabaseTable<ReceitasSalvasRow> {
  @override
  String get tableName => 'receitas_salvas';

  @override
  ReceitasSalvasRow createRow(Map<String, dynamic> data) =>
      ReceitasSalvasRow(data);
}

class ReceitasSalvasRow extends SupabaseDataRow {
  ReceitasSalvasRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ReceitasSalvasTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  String? get usuarioId => getField<String>('usuario_id');
  set usuarioId(String? value) => setField<String>('usuario_id', value);

  String? get receitaId => getField<String>('receita_id');
  set receitaId(String? value) => setField<String>('receita_id', value);

  DateTime? get criadoEm => getField<DateTime>('criado_em');
  set criadoEm(DateTime? value) => setField<DateTime>('criado_em', value);
}
