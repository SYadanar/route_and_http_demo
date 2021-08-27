// https://pub.dev/packages/dio
// https://pub.dev/packages/json_serializable
// https://holidayapi.com

import 'package:dio/dio.dart';
import 'package:route_and_http_demo/models/holiday_response.dart';
import 'package:route_and_http_demo/models/passenger_response.dart';

class ApiService {
  // ignore: non_constant_identifier_names
  final String api_key = "be76a996-158d-4997-9a3f-967b771fc369";

  // & = query parameters
  // final String route =
  //     "https://holidayapi.com/v1/holidays?pretty&key=be76a996-158d-4997-9a3f-967b771fc369&country=MM&year=2020";
  final String route =
      "https://api.instantwebtools.net/v1/passenger?page=3&size=30";

  Future<HolidayResponse> getHolidayResponse(
      // Future mhr Future mhan ti ag async ko 3
      // async nk await nk thwell 3 ya
      String country,
      String year) async {
    try {
      final response = await Dio().get('https://holidayapi.com/v1/holidays',
          queryParameters: {'key': api_key, 'country': country, 'year': year});
      print("The response is $response");
      print("The data is ${response.data}");

      return HolidayResponse.fromJson(response.data);
    } on DioError catch (e) {
      // print("The error is " + e.toString());
      // print("The error is ${e.response!.statusCode}");
      throw Exception("The error code is ${e.response!.statusCode}");
    }
  }

  Future<PassengerResponse> getPassengers(int page) async {
    try {
      final response = await Dio().get(
          'https://api.instantwebtools.net/v1/passenger',
          queryParameters: {
            'page': page,
            'size': 30,
          });
      print("The response is $response");
      print("The data is ${response.data}");

      return PassengerResponse.fromJson(response.data);
    } on DioError catch (e) {
      throw Exception("The error code is ${e.response!.statusCode}");
    }
  }
}
