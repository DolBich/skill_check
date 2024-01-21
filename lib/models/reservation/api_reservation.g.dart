// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_reservation.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ReservationDataImpl _$$ReservationDataImplFromJson(
        Map<String, dynamic> json) =>
    _$ReservationDataImpl(
      id: json['id'] as num,
      hotel_name: json['hotel_name'] as String,
      hotel_adress: json['hotel_adress'] as String,
      horating: json['horating'] as num,
      rating_name: json['rating_name'] as String,
      departure: json['departure'] as String,
      arrival_country: json['arrival_country'] as String,
      tour_date_start: json['tour_date_start'] as String,
      tour_date_stop: json['tour_date_stop'] as String,
      number_of_nights: json['number_of_nights'] as num,
      room: json['room'] as String,
      nutrition: json['nutrition'] as String,
      tour_price: json['tour_price'] as num,
      fuel_charge: json['fuel_charge'] as num,
      service_charge: json['service_charge'] as num,
    );

Map<String, dynamic> _$$ReservationDataImplToJson(
        _$ReservationDataImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'hotel_name': instance.hotel_name,
      'hotel_adress': instance.hotel_adress,
      'horating': instance.horating,
      'rating_name': instance.rating_name,
      'departure': instance.departure,
      'arrival_country': instance.arrival_country,
      'tour_date_start': instance.tour_date_start,
      'tour_date_stop': instance.tour_date_stop,
      'number_of_nights': instance.number_of_nights,
      'room': instance.room,
      'nutrition': instance.nutrition,
      'tour_price': instance.tour_price,
      'fuel_charge': instance.fuel_charge,
      'service_charge': instance.service_charge,
    };
