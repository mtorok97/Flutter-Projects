import 'package:json_annotation/json_annotation.dart';

part 'result.g.dart';

@JsonSerializable()
class Result {
  final String? uid;
  final String author;
  final DateTime time;
  final Map? first;
  final Map? second;
  final Map? third;

  Result({
    this.uid,
    required this.author,
    required this.time,
    this.first,
    this.second,
    this.third,
  });

  factory Result.fromJson(Map<String, dynamic> json) => _$ResultFromJson(json);

  Map<String, dynamic> toJson() => _$ResultToJson(this);
}

