import '../database.dart';

class RespostaAvaliacaoTable extends SupabaseTable<RespostaAvaliacaoRow> {
  @override
  String get tableName => 'resposta_avaliacao';

  @override
  RespostaAvaliacaoRow createRow(Map<String, dynamic> data) =>
      RespostaAvaliacaoRow(data);
}

class RespostaAvaliacaoRow extends SupabaseDataRow {
  RespostaAvaliacaoRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => RespostaAvaliacaoTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  String? get usuarioId => getField<String>('usuario_id');
  set usuarioId(String? value) => setField<String>('usuario_id', value);

  String? get receitaId => getField<String>('receita_id');
  set receitaId(String? value) => setField<String>('receita_id', value);

  String get conteudo => getField<String>('conteudo')!;
  set conteudo(String value) => setField<String>('conteudo', value);

  DateTime? get criadoEm => getField<DateTime>('criado_em');
  set criadoEm(DateTime? value) => setField<DateTime>('criado_em', value);

  DateTime? get atualizadoEm => getField<DateTime>('atualizado_em');
  set atualizadoEm(DateTime? value) =>
      setField<DateTime>('atualizado_em', value);

  String? get avaliacao => getField<String>('avaliacao');
  set avaliacao(String? value) => setField<String>('avaliacao', value);
}
