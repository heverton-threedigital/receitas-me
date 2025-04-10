import '../database.dart';

class PerfisTable extends SupabaseTable<PerfisRow> {
  @override
  String get tableName => 'perfis';

  @override
  PerfisRow createRow(Map<String, dynamic> data) => PerfisRow(data);
}

class PerfisRow extends SupabaseDataRow {
  PerfisRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => PerfisTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  String get nomeUsuario => getField<String>('nome_usuario')!;
  set nomeUsuario(String value) => setField<String>('nome_usuario', value);

  String? get avatarUrl => getField<String>('avatar_url');
  set avatarUrl(String? value) => setField<String>('avatar_url', value);

  String? get bio => getField<String>('bio');
  set bio(String? value) => setField<String>('bio', value);

  DateTime? get criadoEm => getField<DateTime>('criado_em');
  set criadoEm(DateTime? value) => setField<DateTime>('criado_em', value);

  DateTime? get atualizadoEm => getField<DateTime>('atualizado_em');
  set atualizadoEm(DateTime? value) =>
      setField<DateTime>('atualizado_em', value);
}
