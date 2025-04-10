import '../database.dart';

class CategoriasRegionaisTable extends SupabaseTable<CategoriasRegionaisRow> {
  @override
  String get tableName => 'categorias_regionais';

  @override
  CategoriasRegionaisRow createRow(Map<String, dynamic> data) =>
      CategoriasRegionaisRow(data);
}

class CategoriasRegionaisRow extends SupabaseDataRow {
  CategoriasRegionaisRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => CategoriasRegionaisTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  String get nome => getField<String>('nome')!;
  set nome(String value) => setField<String>('nome', value);

  String? get imagemUrl => getField<String>('imagem_url');
  set imagemUrl(String? value) => setField<String>('imagem_url', value);

  String? get descricao => getField<String>('descricao');
  set descricao(String? value) => setField<String>('descricao', value);

  DateTime? get criadoEm => getField<DateTime>('criado_em');
  set criadoEm(DateTime? value) => setField<DateTime>('criado_em', value);
}
