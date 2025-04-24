import '../database.dart';

class ReceitasResumoTable extends SupabaseTable<ReceitasResumoRow> {
  @override
  String get tableName => 'receitas_resumo';

  @override
  ReceitasResumoRow createRow(Map<String, dynamic> data) =>
      ReceitasResumoRow(data);
}

class ReceitasResumoRow extends SupabaseDataRow {
  ReceitasResumoRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ReceitasResumoTable();

  String? get id => getField<String>('id');
  set id(String? value) => setField<String>('id', value);

  String? get titulo => getField<String>('titulo');
  set titulo(String? value) => setField<String>('titulo', value);

  String? get imagemUrl => getField<String>('imagem_url');
  set imagemUrl(String? value) => setField<String>('imagem_url', value);

  String? get porcoes => getField<String>('porcoes');
  set porcoes(String? value) => setField<String>('porcoes', value);

  int? get tempoPreparo => getField<int>('tempo_preparo');
  set tempoPreparo(int? value) => setField<int>('tempo_preparo', value);

  DateTime? get criadoEm => getField<DateTime>('criado_em');
  set criadoEm(DateTime? value) => setField<DateTime>('criado_em', value);

  String? get autorId => getField<String>('autor_id');
  set autorId(String? value) => setField<String>('autor_id', value);

  String? get autorNome => getField<String>('autor_nome');
  set autorNome(String? value) => setField<String>('autor_nome', value);

  String? get autorSobrenome => getField<String>('autor_sobrenome');
  set autorSobrenome(String? value) =>
      setField<String>('autor_sobrenome', value);

  String? get autorAvatarUrl => getField<String>('autor_avatar_url');
  set autorAvatarUrl(String? value) =>
      setField<String>('autor_avatar_url', value);
}
