import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:http/http.dart' as http;

import 'package:skill_check/api/api.dart';

part 'api_room.freezed.dart';
part 'api_room.g.dart';

@freezed
class RoomState with _$RoomState{
  const factory RoomState.data(RoomData roomData) = Data;
  const factory RoomState.loading() = Loading;
  const factory RoomState.error([String? e]) = Error;
}

@freezed
class RoomData with _$RoomData{
  const factory RoomData({
    required List<dynamic> rooms,
  }) = _RoomData;

  factory RoomData.fromJson(Map<String, dynamic> json) => RoomData(
    rooms: json["rooms"],
  );
}

final roomNotifierProvider = StateNotifierProvider<RoomNotifier, RoomState?>((ref){
  return RoomNotifier(ref);
});

class RoomNotifier extends StateNotifier<RoomState?> {
  RoomNotifier(this.ref, [RoomState? hotel]) : super(hotel);
  final Ref ref;

  Future<String?> getData() async{
    setLoading();
    try{
      http.Response response = await ref.read(apiProvider).getRoom();
      var data = jsonDecode(response.body);
      data = RoomData.fromJson(data);
      state = RoomState.data(data);
    } catch(e){
      state = RoomState.error(e.toString());
    }
  }

  void setLoading() {
    state = const RoomState.loading();
  }

}

//flutter pub run build_runner watch --delete-conflicting-outputs //ДЛЯ ГЕНЕРАЦИИ ФАЙЛОВ