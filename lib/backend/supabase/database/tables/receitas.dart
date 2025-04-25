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

  String? get imagemUrl => getField<String>('imagem_url');
  set imagemUrl(String? value) => setField<String>('imagem_url', value);

  String? get categoriaId => getField<String>('categoria_id');
  set categoriaId(String? value) => setField<String>('categoria_id', value);

  String? get autorId => getField<String>('autor_id');
  set autorId(String? value) => setField<String>('autor_id', value);

  DateTime? get criadoEm => getField<DateTime>('criado_em');
  set criadoEm(DateTime? value) => setField<DateTime>('criado_em', value);

  DateTime? get atualizadoEm => getField<DateTime>('atualizado_em');
  set atualizadoEm(DateTime? value) =>
      setField<DateTime>('atualizado_em', value);

  bool? get publicado => getField<bool>('publicado');
  set publicado(bool? value) => setField<bool>('publicado', value);

  int? get visualizacoes => getField<int>('visualizacoes');
  set visualizacoes(int? value) => setField<int>('visualizacoes', value);

  String? get porcoes => getField<String>('porcoes');
  set porcoes(String? value) => setField<String>('porcoes', value);

  String? get tempoPreparoPeriodo => getField<String>('tempo_preparo_periodo');
  set tempoPreparoPeriodo(String? value) =>
      setField<String>('tempo_preparo_periodo', value);
}
