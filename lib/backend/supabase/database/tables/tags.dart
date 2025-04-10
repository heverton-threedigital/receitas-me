import '../database.dart';

class TagsTable extends SupabaseTable<TagsRow> {
  @override
  String get tableName => 'tags';

  @override
  TagsRow createRow(Map<String, dynamic> data) => TagsRow(data);
}

class TagsRow extends SupabaseDataRow {
  TagsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => TagsTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  String get nome => getField<String>('nome')!;
  set nome(String value) => setField<String>('nome', value);

  DateTime? get criadoEm => getField<DateTime>('criado_em');
  set criadoEm(DateTime? value) => setField<DateTime>('criado_em', value);
}
