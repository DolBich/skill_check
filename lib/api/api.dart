import 'dart:convert';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:http/http.dart' as http;
import 'package:skill_check/models/hotel/api_hotel.dart';
import 'package:skill_check/models/reservation/api_reservation.dart';
import 'package:skill_check/models/room/api_room.dart';

class API {
  API({this.baseURL = "https://run.mocky.io/v3"});

  final String baseURL;

  Future<http.Response> getHotel() async {
    String command = '/75000507-da9a-43f8-a618-df698ea7176d';
    var response = await http.get(Uri.parse('$baseURL$command'));
    return response;
  }

  Future<http.Response> getRoom() async {
    String command = '/157ea342-a8a3-4e00-a8e6-a87d170aa0a2';
    var response = await http.get(Uri.parse('$baseURL$command'));
    return response;
  }

  Future<http.Response> getReservation() async {
    String command = '/63866c74-d593-432c-af8e-f279d1a8d2ff';
    var response = await http.get(Uri.parse('$baseURL$command'));
    return response;
  }
}

Provider apiProvider = Provider<API>((ref) {
  return API();
});
