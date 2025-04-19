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

  bool get isAdmin => getField<bool>('is_admin')!;
  set isAdmin(bool value) => setField<bool>('is_admin', value);

  String? get email => getField<String>('email');
  set email(String? value) => setField<String>('email', value);

  String? get nome => getField<String>('nome');
  set nome(String? value) => setField<String>('nome', value);

  String? get sobrenome => getField<String>('sobrenome');
  set sobrenome(String? value) => setField<String>('sobrenome', value);
}
