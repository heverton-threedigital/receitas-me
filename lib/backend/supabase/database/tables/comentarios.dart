import '../database.dart';

class ComentariosTable extends SupabaseTable<ComentariosRow> {
  @override
  String get tableName => 'comentarios';

  @override
  ComentariosRow createRow(Map<String, dynamic> data) => ComentariosRow(data);
}

class ComentariosRow extends SupabaseDataRow {
  ComentariosRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ComentariosTable();

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
}
