// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Result _$ResultFromJson(Map<String, dynamic> json) => Result(
      uid: json['uid'] as String?,
      author: json['author'] as String,
      time: DateTime.parse(json['time'] as String),
      first: json['first'] as Map<String, dynamic>?,
      second: json['second'] as Map<String, dynamic>?,
      third: json['third'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$ResultToJson(Result instance) => <String, dynamic>{
      'uid': instance.uid,
      'author': instance.author,
      'time': instance.time.toIso8601String(),
      'first': instance.first,
      'second': instance.second,
      'third': instance.third,
    };
