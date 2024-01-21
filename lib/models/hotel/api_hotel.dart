import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:http/http.dart' as http;

import 'package:skill_check/api/api.dart';

part 'api_hotel.freezed.dart';

part 'api_hotel.g.dart';

@freezed
class HotelState with _$HotelState {
  const factory HotelState.data(HotelData hotelData) = Data;

  const factory HotelState.loading() = Loading;

  const factory HotelState.error([String? e]) = Error;
}

@freezed
class HotelData with _$HotelData {
  const factory HotelData({
    required num id,
    required String name,
    required String adress,
    required num minimal_price,
    required String price_for_it,
    required num rating,
    required String rating_name,
    required List<dynamic> image_urls,
    required Map<String, dynamic> about_the_hotel,
  }) = _HotelData;

  factory HotelData.fromJson(Map<String, dynamic> json) => HotelData(
        id: json["id"],
        name: json["name"],
        adress: json["adress"],
        minimal_price: json["minimal_price"],
        price_for_it: json["price_for_it"],
        rating: json["rating"],
        rating_name: json["rating_name"],
        image_urls: json["image_urls"],
        about_the_hotel: json["about_the_hotel"],
      );
}

final hotelNotifierProvider =
    StateNotifierProvider<HotelNotifier, HotelState?>((ref) {
  return HotelNotifier(ref);
});

class HotelNotifier extends StateNotifier<HotelState?> {
  HotelNotifier(this.ref, [HotelState? hotel]) : super(hotel);
  final Ref ref;

  Future<String?> getData() async {
    setLoading();
    try {
      http.Response response = await ref.read(apiProvider).getHotel();
      var data = jsonDecode(response.body);
      data = HotelData.fromJson(data);
      state = HotelState.data(data);
    } catch (e) {
      state = HotelState.error(e.toString());
    }
  }

  void setLoading() {
    state = const HotelState.loading();
  }
}

//flutter pub run build_runner watch --delete-conflicting-outputs //ДЛЯ ГЕНЕРАЦИИ ФАЙЛОВ
