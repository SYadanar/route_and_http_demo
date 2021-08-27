// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'passenger_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PassengerResponse _$PassengerResponseFromJson(Map<String, dynamic> json) {
  return PassengerResponse(
    json['totalPassengers'] as int,
    json['totalPages'] as int,
    (json['data'] as List<dynamic>)
        .map((e) => PassengerData.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$PassengerResponseToJson(PassengerResponse instance) =>
    <String, dynamic>{
      'totalPassengers': instance.totalPassengers,
      'totalPages': instance.totalPages,
      'data': instance.data,
    };

PassengerData _$PassengerDataFromJson(Map<String, dynamic> json) {
  return PassengerData(
    json['_id'] as String,
    json['name'] as String,
    json['trips'] as int?,
    (json['airline'] as List<dynamic>)
        .map((e) => Airline.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$PassengerDataToJson(PassengerData instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'name': instance.name,
      'trips': instance.trips,
      'airline': instance.airline,
    };

Airline _$AirlineFromJson(Map<String, dynamic> json) {
  return Airline(
    json['id'] as int,
    json['name'] as String,
    json['country'] as String,
    json['logo'] as String,
    json['slogan'] as String,
    json['website'] as String,
  );
}

Map<String, dynamic> _$AirlineToJson(Airline instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'country': instance.country,
      'logo': instance.logo,
      'slogan': instance.slogan,
      'website': instance.website,
    };
