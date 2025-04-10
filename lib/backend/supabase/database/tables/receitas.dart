import '../database.dart';

class ReceitasTable extends SupabaseTable<ReceitasRow> {
  @override
  String get tableName => 'receitas';

  @override
  ReceitasRow createRow(Map<String, dynamic> data) => ReceitasRow(data);
}

class ReceitasRow extends SupabaseDataRow {
  ReceitasRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ReceitasTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  String get titulo => getField<String>('titulo')!;
  set titulo(String value) => setField<String>('titulo', value);

  String get descricao => getField<String>('descricao')!;
  set descricao(String value) => setField<String>('descricao', value);

  int get tempoPreparo => getField<int>('tempo_preparo')!;
  set tempoPreparo(int value) => setField<int>('tempo_preparo', value);

  String get dificuldade => getField<String>('dificuldade')!;
  set dificuldade(String value) => setField<String>('dificuldade', value);

  String? get imagemUrl => getField<String>('imagem_url');
  set imagemUrl(String? value) => setField<String>('imagem_url', value);

  String? get categoriaId => getField<String>('categoria_id');
  set categoriaId(String? value) => setField<String>('categoria_id', value);

  String? get categoriaRegionalId => getField<String>('categoria_regional_id');
  set categoriaRegionalId(String? value) =>
      setField<String>('categoria_regional_id', value);

  String? get autorId => getField<String>('autor_id');
  set autorId(String? value) => setField<String>('autor_id', value);

  DateTime? get criadoEm => getField<DateTime>('criado_em');
  set criadoEm(DateTime? value) => setField<DateTime>('criado_em', value);

  DateTime? get atualizadoEm => getField<DateTime>('atualizado_em');
  set atualizadoEm(DateTime? value) =>
      setField<DateTime>('atualizado_em', value);
}
