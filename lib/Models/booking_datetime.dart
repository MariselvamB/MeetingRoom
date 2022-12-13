class BookingDatetime {
  String? companiesId;
  String? floorId;
  String? startDate;
  String? endDate;
  String? startTime;
  String? endTime;

  BookingDatetime({
    this.companiesId,
    this.floorId,
    this.startDate,
    this.endDate,
    this.startTime,
    this.endTime,
  });

  factory BookingDatetime.fromJson(Map<String, dynamic> json) {
    return BookingDatetime(
      companiesId: json['companies_id'] as String?,
      floorId: json['floor_id'] as String?,
      startDate: json['start_date'] as String?,
      endDate: json['end_date'] as String?,
      startTime: json['start_time'] as String?,
      endTime: json['end_time'] as String?,
    );
  }

  Map<String, dynamic> toJson() => {
        'companies_id': companiesId,
        'floor_id': floorId,
        'start_date': startDate,
        'end_date': endDate,
        'start_time': startTime,
        'end_time': endTime,
      };
}
