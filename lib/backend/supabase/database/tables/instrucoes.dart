import '../database.dart';

class InstrucoesTable extends SupabaseTable<InstrucoesRow> {
  @override
  String get tableName => 'instrucoes';

  @override
  InstrucoesRow createRow(Map<String, dynamic> data) => InstrucoesRow(data);
}

class InstrucoesRow extends SupabaseDataRow {
  InstrucoesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => InstrucoesTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  String? get receitaId => getField<String>('receita_id');
  set receitaId(String? value) => setField<String>('receita_id', value);

  int get numeroPasso => getField<int>('numero_passo')!;
  set numeroPasso(int value) => setField<int>('numero_passo', value);

  String get descricao => getField<String>('descricao')!;
  set descricao(String value) => setField<String>('descricao', value);

  DateTime? get criadoEm => getField<DateTime>('criado_em');
  set criadoEm(DateTime? value) => setField<DateTime>('criado_em', value);

  String? get fotoInstrucao01 => getField<String>('foto_instrucao01');
  set fotoInstrucao01(String? value) =>
      setField<String>('foto_instrucao01', value);

  String? get fotoInstrucao02 => getField<String>('foto_instrucao02');
  set fotoInstrucao02(String? value) =>
      setField<String>('foto_instrucao02', value);

  String? get fotoInstrucao03 => getField<String>('foto_instrucao03');
  set fotoInstrucao03(String? value) =>
      setField<String>('foto_instrucao03', value);

  String? get fotoInstrucao04 => getField<String>('foto_instrucao04');
  set fotoInstrucao04(String? value) =>
      setField<String>('foto_instrucao04', value);

  String? get fotoInstrucao05 => getField<String>('foto_instrucao05');
  set fotoInstrucao05(String? value) =>
      setField<String>('foto_instrucao05', value);
}
