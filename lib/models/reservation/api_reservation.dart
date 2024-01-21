import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:http/http.dart' as http;

import 'package:skill_check/api/api.dart';

part 'api_reservation.freezed.dart';
part 'api_reservation.g.dart';

@freezed
class ReservationState with _$ReservationState{
  const factory ReservationState.data(ReservationData reservationData) = Data;
  const factory ReservationState.loading() = Loading;
  const factory ReservationState.error([String? e]) = Error;
}

@freezed
class ReservationData with _$ReservationData{
  const factory ReservationData({
    required num id,
    required String hotel_name,
    required String hotel_adress,
    required num horating,
    required String rating_name,
    required String departure,
    required String arrival_country,
    required String tour_date_start,
    required String tour_date_stop,
    required num number_of_nights,
    required String room,
    required String nutrition,
    required num tour_price,
    required num fuel_charge,
    required num service_charge,
  }) = _ReservationData;

  factory ReservationData.fromJson(Map<String, dynamic> json) => ReservationData(
    id: json["id"],
    hotel_name: json["hotel_name"],
    hotel_adress: json["hotel_adress"],
    horating: json["horating"],
    rating_name: json["rating_name"],
    departure: json["departure"],
    arrival_country: json["arrival_country"],
    tour_date_start: json["tour_date_start"],
    tour_date_stop: json["tour_date_stop"],
    number_of_nights: json["number_of_nights"],
    room: json["room"],
    nutrition: json["nutrition"],
    tour_price: json["tour_price"],
    fuel_charge: json["fuel_charge"],
    service_charge: json["service_charge"],
  );
}

final reservationNotifierProvider = StateNotifierProvider<ReservationNotifier, ReservationState?>((ref){
  return ReservationNotifier(ref);
});

class ReservationNotifier extends StateNotifier<ReservationState?> {
  ReservationNotifier(this.ref, [ReservationState? hotel]) : super(hotel);
  final Ref ref;

  Future<String?> getData() async{
    setLoading();
    try{
      http.Response response = await ref.read(apiProvider).getReservation();
      var data = jsonDecode(response.body);
      data = ReservationData.fromJson(data);
      state = ReservationState.data(data);
    } catch(e){
      state = ReservationState.error(e.toString());
    }
  }

  void setLoading() {
    state = const ReservationState.loading();
  }

}

//flutter pub run build_runner watch --delete-conflicting-outputs //ДЛЯ ГЕНЕРАЦИИ ФАЙЛОВ