import '../database.dart';

class PerfisComContagemReceitasTable
    extends SupabaseTable<PerfisComContagemReceitasRow> {
  @override
  String get tableName => 'perfis_com_contagem_receitas';

  @override
  PerfisComContagemReceitasRow createRow(Map<String, dynamic> data) =>
      PerfisComContagemReceitasRow(data);
}

class PerfisComContagemReceitasRow extends SupabaseDataRow {
  PerfisComContagemReceitasRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => PerfisComContagemReceitasTable();

  String? get id => getField<String>('id');
  set id(String? value) => setField<String>('id', value);

  String? get nome => getField<String>('nome');
  set nome(String? value) => setField<String>('nome', value);

  String? get sobrenome => getField<String>('sobrenome');
  set sobrenome(String? value) => setField<String>('sobrenome', value);

  String? get usuario => getField<String>('usuario');
  set usuario(String? value) => setField<String>('usuario', value);

  String? get avatarUrl => getField<String>('avatar_url');
  set avatarUrl(String? value) => setField<String>('avatar_url', value);

  int? get quantidadeReceitas => getField<int>('quantidade_receitas');
  set quantidadeReceitas(int? value) =>
      setField<int>('quantidade_receitas', value);
}
