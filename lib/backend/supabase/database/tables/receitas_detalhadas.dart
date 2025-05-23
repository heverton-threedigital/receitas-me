import '../database.dart';

class ReceitasDetalhadasTable extends SupabaseTable<ReceitasDetalhadasRow> {
  @override
  String get tableName => 'receitas_detalhadas';

  @override
  ReceitasDetalhadasRow createRow(Map<String, dynamic> data) =>
      ReceitasDetalhadasRow(data);
}

class ReceitasDetalhadasRow extends SupabaseDataRow {
  ReceitasDetalhadasRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ReceitasDetalhadasTable();

  String? get id => getField<String>('id');
  set id(String? value) => setField<String>('id', value);

  String? get slug => getField<String>('slug');
  set slug(String? value) => setField<String>('slug', value);

  String? get titulo => getField<String>('titulo');
  set titulo(String? value) => setField<String>('titulo', value);

  bool? get publicado => getField<bool>('publicado');
  set publicado(bool? value) => setField<bool>('publicado', value);

  String? get receitaDescricao => getField<String>('receita_descricao');
  set receitaDescricao(String? value) =>
      setField<String>('receita_descricao', value);

  int? get tempoPreparo => getField<int>('tempo_preparo');
  set tempoPreparo(int? value) => setField<int>('tempo_preparo', value);

  String? get tempoPreparoPeriodo => getField<String>('tempo_preparo_periodo');
  set tempoPreparoPeriodo(String? value) =>
      setField<String>('tempo_preparo_periodo', value);

  String? get porcoes => getField<String>('porcoes');
  set porcoes(String? value) => setField<String>('porcoes', value);

  String? get imagemUrl => getField<String>('imagem_url');
  set imagemUrl(String? value) => setField<String>('imagem_url', value);

  DateTime? get criadoEm => getField<DateTime>('criado_em');
  set criadoEm(DateTime? value) => setField<DateTime>('criado_em', value);

  DateTime? get atualizadoEm => getField<DateTime>('atualizado_em');
  set atualizadoEm(DateTime? value) =>
      setField<DateTime>('atualizado_em', value);

  int? get visualizacoes => getField<int>('visualizacoes');
  set visualizacoes(int? value) => setField<int>('visualizacoes', value);

  String? get autorId => getField<String>('autor_id');
  set autorId(String? value) => setField<String>('autor_id', value);

  String? get autorNome => getField<String>('autor_nome');
  set autorNome(String? value) => setField<String>('autor_nome', value);

  String? get autorSobrenome => getField<String>('autor_sobrenome');
  set autorSobrenome(String? value) =>
      setField<String>('autor_sobrenome', value);

  String? get autorUsuario => getField<String>('autor_usuario');
  set autorUsuario(String? value) => setField<String>('autor_usuario', value);

  String? get autorAvatarUrl => getField<String>('autor_avatar_url');
  set autorAvatarUrl(String? value) =>
      setField<String>('autor_avatar_url', value);

  String? get categoriaNome => getField<String>('categoria_nome');
  set categoriaNome(String? value) => setField<String>('categoria_nome', value);

  dynamic get ingredientes => getField<dynamic>('ingredientes');
  set ingredientes(dynamic value) => setField<dynamic>('ingredientes', value);

  dynamic get instrucoes => getField<dynamic>('instrucoes');
  set instrucoes(dynamic value) => setField<dynamic>('instrucoes', value);
}
