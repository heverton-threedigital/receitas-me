import '../database.dart';

class IngredientesTable extends SupabaseTable<IngredientesRow> {
  @override
  String get tableName => 'ingredientes';

  @override
  IngredientesRow createRow(Map<String, dynamic> data) => IngredientesRow(data);
}

class IngredientesRow extends SupabaseDataRow {
  IngredientesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => IngredientesTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  String? get receitaId => getField<String>('receita_id');
  set receitaId(String? value) => setField<String>('receita_id', value);

  String get nome => getField<String>('nome')!;
  set nome(String value) => setField<String>('nome', value);

  String get quantidade => getField<String>('quantidade')!;
  set quantidade(String value) => setField<String>('quantidade', value);

  String? get unidade => getField<String>('unidade');
  set unidade(String? value) => setField<String>('unidade', value);

  DateTime? get criadoEm => getField<DateTime>('criado_em');
  set criadoEm(DateTime? value) => setField<DateTime>('criado_em', value);
}
