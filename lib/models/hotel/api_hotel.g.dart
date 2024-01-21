// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_hotel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$HotelDataImpl _$$HotelDataImplFromJson(Map<String, dynamic> json) =>
    _$HotelDataImpl(
      id: json['id'] as num,
      name: json['name'] as String,
      adress: json['adress'] as String,
      minimal_price: json['minimal_price'] as num,
      price_for_it: json['price_for_it'] as String,
      rating: json['rating'] as num,
      rating_name: json['rating_name'] as String,
      image_urls: json['image_urls'] as List<dynamic>,
      about_the_hotel: json['about_the_hotel'] as Map<String, dynamic>,
    );

Map<String, dynamic> _$$HotelDataImplToJson(_$HotelDataImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'adress': instance.adress,
      'minimal_price': instance.minimal_price,
      'price_for_it': instance.price_for_it,
      'rating': instance.rating,
      'rating_name': instance.rating_name,
      'image_urls': instance.image_urls,
      'about_the_hotel': instance.about_the_hotel,
    };
