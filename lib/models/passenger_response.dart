// https://api.instantwebtools.net/v1/passenger?page=1&size=30
import 'package:json_annotation/json_annotation.dart';

part 'passenger_response.g.dart';

@JsonSerializable()
class PassengerResponse {
  final int totalPassengers;
  final int totalPages;
  final List<PassengerData> data;

  const PassengerResponse(this.totalPassengers, this.totalPages, this.data);

  factory PassengerResponse.fromJson(Map<String, dynamic> json) =>
      _$PassengerResponseFromJson(json);

  Map<String, dynamic> toJson() => _$PassengerResponseToJson(this);
}

@JsonSerializable()
class PassengerData {
  @JsonKey(name: '_id')
  final String id;
  final String name;
  final int? trips;
  final List<Airline> airline;

  const PassengerData(this.id, this.name, this.trips, this.airline);

  factory PassengerData.fromJson(Map<String, dynamic> json) =>
      _$PassengerDataFromJson(json);

  Map<String, dynamic> toJson() => _$PassengerDataToJson(this);
}

@JsonSerializable()
class Airline {
  final int id;
  final String name;
  final String country;
  final String logo;
  final String slogan;
  final String website;

  const Airline(
      this.id, this.name, this.country, this.logo, this.slogan, this.website);

  factory Airline.fromJson(Map<String, dynamic> json) =>
      _$AirlineFromJson(json);

  Map<String, dynamic> toJson() => _$AirlineToJson(this);
}
