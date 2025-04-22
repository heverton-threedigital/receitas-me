import '../database.dart';

class CurtidasReceitasTable extends SupabaseTable<CurtidasReceitasRow> {
  @override
  String get tableName => 'curtidas_receitas';

  @override
  CurtidasReceitasRow createRow(Map<String, dynamic> data) =>
      CurtidasReceitasRow(data);
}

class CurtidasReceitasRow extends SupabaseDataRow {
  CurtidasReceitasRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => CurtidasReceitasTable();

  String get receitaId => getField<String>('receita_id')!;
  set receitaId(String value) => setField<String>('receita_id', value);

  String get userId => getField<String>('user_id')!;
  set userId(String value) => setField<String>('user_id', value);

  DateTime? get criadoEm => getField<DateTime>('criado_em');
  set criadoEm(DateTime? value) => setField<DateTime>('criado_em', value);
}
