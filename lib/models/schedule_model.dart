class ScheduleModel {
  final int? id;
  final String title;
  final String day;
  final String startTime;
  final String endTime;

  ScheduleModel({
    this.id,
    required this.title,
    required this.day,
    required this.startTime,
    required this.endTime,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'title': title,
      'day': day,
      'startTime': startTime,
      'endTime': endTime,
    };
  }

  factory ScheduleModel.fromMap(Map<String, dynamic> map) {
    return ScheduleModel(
      id: map['id'],
      title: map['title'],
      day: map['day'],
      startTime: map['startTime'],
      endTime: map['endTime'],
    );
  }
}
