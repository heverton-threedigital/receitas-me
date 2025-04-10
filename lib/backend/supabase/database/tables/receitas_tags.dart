import '../database.dart';

class ReceitasTagsTable extends SupabaseTable<ReceitasTagsRow> {
  @override
  String get tableName => 'receitas_tags';

  @override
  ReceitasTagsRow createRow(Map<String, dynamic> data) => ReceitasTagsRow(data);
}

class ReceitasTagsRow extends SupabaseDataRow {
  ReceitasTagsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ReceitasTagsTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  String? get receitaId => getField<String>('receita_id');
  set receitaId(String? value) => setField<String>('receita_id', value);

  String? get tagId => getField<String>('tag_id');
  set tagId(String? value) => setField<String>('tag_id', value);

  DateTime? get criadoEm => getField<DateTime>('criado_em');
  set criadoEm(DateTime? value) => setField<DateTime>('criado_em', value);
}
