import 'seat.api.json.dart';

class Table {
  String? tableId;
  String? tableName;
  List<Seat>? seat;

  Table({this.tableId, this.tableName, this.seat});

  factory Table.fromJson(Map<String, dynamic> json) => Table(
        tableId: json['table_id'] as String?,
        tableName: json['table_name'] as String?,
        seat: (json['seat'] as List<dynamic>?)
            ?.map((e) => Seat.fromJson(e as Map<String, dynamic>))
            .toList(),
      );

  Map<String, dynamic> toJson() => {
        'table_id': tableId,
        'table_name': tableName,
        'seat': seat?.map((e) => e.toJson()).toList(),
      };
}
