// ----------------------------------------------------
// Model of single alcohol-level in the air measurement
// ----------------------------------------------------
class AlcoholMeasurement {
  final int? id;
  final double alcohol_level;
  final DateTime time;
  final bool is_above_legal_level;

  // Constructor
  const AlcoholMeasurement(
      {this.id,
      required this.alcohol_level,
      required this.time,
      required this.is_above_legal_level});

  AlcoholMeasurement copy_with(
      {int? id, double? alcohol_level, DateTime? time}) {
    return AlcoholMeasurement(
        id: id ?? this.id,
        alcohol_level: alcohol_level ?? this.alcohol_level,
        time: time ?? this.time,
        is_above_legal_level: false);
  }

  Map<String, dynamic> to_map() {
    return {
      'id': id,
      'alcohol_level:': alcohol_level,
      'time': time.toIso8601String(),
      'is_above_legal_level': is_above_legal_level
    };
  }

  factory AlcoholMeasurement.from_map(Map<String, dynamic> map) {
    return AlcoholMeasurement(
        id: map['id'] as int,
        alcohol_level: map['alcohol_level'] as double,
        time: DateTime.parse(map['time'] as String),
        is_above_legal_level: map['is_above_legal_level'] as bool);
  }
}
