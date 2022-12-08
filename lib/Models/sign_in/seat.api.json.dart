class Seat {
  String? floorId;
  String? tableId;
  String? seatId;
  String? seatName;
  String? status;

  Seat({
    this.floorId,
    this.tableId,
    this.seatId,
    this.seatName,
    this.status,
  });

  factory Seat.fromJson(Map<String, dynamic> json) => Seat(
        floorId: json['floor_id'] as String?,
        tableId: json['table_id'] as String?,
        seatId: json['seat_id'] as String?,
        seatName: json['seat_name'] as String?,
        status: json['status'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'floor_id': floorId,
        'table_id': tableId,
        'seat_id': seatId,
        'seat_name': seatName,
        'status': status,
      };
}
