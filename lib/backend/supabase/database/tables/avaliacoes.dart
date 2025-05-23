import '../database.dart';

class AvaliacoesTable extends SupabaseTable<AvaliacoesRow> {
  @override
  String get tableName => 'avaliacoes';

  @override
  AvaliacoesRow createRow(Map<String, dynamic> data) => AvaliacoesRow(data);
}

class AvaliacoesRow extends SupabaseDataRow {
  AvaliacoesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => AvaliacoesTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  String? get usuarioId => getField<String>('usuario_id');
  set usuarioId(String? value) => setField<String>('usuario_id', value);

  String? get receitaId => getField<String>('receita_id');
  set receitaId(String? value) => setField<String>('receita_id', value);

  DateTime? get criadoEm => getField<DateTime>('criado_em');
  set criadoEm(DateTime? value) => setField<DateTime>('criado_em', value);

  String? get comentario => getField<String>('comentario');
  set comentario(String? value) => setField<String>('comentario', value);

  DateTime? get atualizado => getField<DateTime>('atualizado');
  set atualizado(DateTime? value) => setField<DateTime>('atualizado', value);

  String? get fotoAvaliacao => getField<String>('foto_avaliacao');
  set fotoAvaliacao(String? value) => setField<String>('foto_avaliacao', value);
}
