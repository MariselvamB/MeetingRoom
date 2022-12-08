import 'table.api.json.dart';

class Hotdesking {
  String? companiesId;
  String? floorId;
  String? floorName;
  List<Table>? table;

  Hotdesking({this.companiesId, this.floorId, this.floorName, this.table});

  factory Hotdesking.fromJson(Map<String, dynamic> json) => Hotdesking(
        companiesId: json['companies_id'] as String?,
        floorId: json['floor_id'] as String?,
        floorName: json['floor_name'] as String?,
        table: (json['table'] as List<dynamic>?)
            ?.map((e) => Table.fromJson(e as Map<String, dynamic>))
            .toList(),
      );

  Map<String, dynamic> toJson() => {
        'companies_id': companiesId,
        'floor_id': floorId,
        'floor_name': floorName,
        'table': table?.map((e) => e.toJson()).toList(),
      };
}
