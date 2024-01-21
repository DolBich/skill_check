// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'api_hotel.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HotelState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(HotelData hotelData) data,
    required TResult Function() loading,
    required TResult Function(String? e) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(HotelData hotelData)? data,
    TResult? Function()? loading,
    TResult? Function(String? e)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(HotelData hotelData)? data,
    TResult Function()? loading,
    TResult Function(String? e)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Data value) data,
    required TResult Function(Loading value) loading,
    required TResult Function(Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Data value)? data,
    TResult? Function(Loading value)? loading,
    TResult? Function(Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Data value)? data,
    TResult Function(Loading value)? loading,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HotelStateCopyWith<$Res> {
  factory $HotelStateCopyWith(
          HotelState value, $Res Function(HotelState) then) =
      _$HotelStateCopyWithImpl<$Res, HotelState>;
}

/// @nodoc
class _$HotelStateCopyWithImpl<$Res, $Val extends HotelState>
    implements $HotelStateCopyWith<$Res> {
  _$HotelStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$DataImplCopyWith<$Res> {
  factory _$$DataImplCopyWith(
          _$DataImpl value, $Res Function(_$DataImpl) then) =
      __$$DataImplCopyWithImpl<$Res>;
  @useResult
  $Res call({HotelData hotelData});

  $HotelDataCopyWith<$Res> get hotelData;
}

/// @nodoc
class __$$DataImplCopyWithImpl<$Res>
    extends _$HotelStateCopyWithImpl<$Res, _$DataImpl>
    implements _$$DataImplCopyWith<$Res> {
  __$$DataImplCopyWithImpl(_$DataImpl _value, $Res Function(_$DataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hotelData = null,
  }) {
    return _then(_$DataImpl(
      null == hotelData
          ? _value.hotelData
          : hotelData // ignore: cast_nullable_to_non_nullable
              as HotelData,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $HotelDataCopyWith<$Res> get hotelData {
    return $HotelDataCopyWith<$Res>(_value.hotelData, (value) {
      return _then(_value.copyWith(hotelData: value));
    });
  }
}

/// @nodoc

class _$DataImpl implements Data {
  const _$DataImpl(this.hotelData);

  @override
  final HotelData hotelData;

  @override
  String toString() {
    return 'HotelState.data(hotelData: $hotelData)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataImpl &&
            (identical(other.hotelData, hotelData) ||
                other.hotelData == hotelData));
  }

  @override
  int get hashCode => Object.hash(runtimeType, hotelData);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DataImplCopyWith<_$DataImpl> get copyWith =>
      __$$DataImplCopyWithImpl<_$DataImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(HotelData hotelData) data,
    required TResult Function() loading,
    required TResult Function(String? e) error,
  }) {
    return data(hotelData);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(HotelData hotelData)? data,
    TResult? Function()? loading,
    TResult? Function(String? e)? error,
  }) {
    return data?.call(hotelData);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(HotelData hotelData)? data,
    TResult Function()? loading,
    TResult Function(String? e)? error,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(hotelData);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Data value) data,
    required TResult Function(Loading value) loading,
    required TResult Function(Error value) error,
  }) {
    return data(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Data value)? data,
    TResult? Function(Loading value)? loading,
    TResult? Function(Error value)? error,
  }) {
    return data?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Data value)? data,
    TResult Function(Loading value)? loading,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this);
    }
    return orElse();
  }
}

abstract class Data implements HotelState {
  const factory Data(final HotelData hotelData) = _$DataImpl;

  HotelData get hotelData;
  @JsonKey(ignore: true)
  _$$DataImplCopyWith<_$DataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$HotelStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingImpl implements Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'HotelState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(HotelData hotelData) data,
    required TResult Function() loading,
    required TResult Function(String? e) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(HotelData hotelData)? data,
    TResult? Function()? loading,
    TResult? Function(String? e)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(HotelData hotelData)? data,
    TResult Function()? loading,
    TResult Function(String? e)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Data value) data,
    required TResult Function(Loading value) loading,
    required TResult Function(Error value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Data value)? data,
    TResult? Function(Loading value)? loading,
    TResult? Function(Error value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Data value)? data,
    TResult Function(Loading value)? loading,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class Loading implements HotelState {
  const factory Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$ErrorImplCopyWith<$Res> {
  factory _$$ErrorImplCopyWith(
          _$ErrorImpl value, $Res Function(_$ErrorImpl) then) =
      __$$ErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? e});
}

/// @nodoc
class __$$ErrorImplCopyWithImpl<$Res>
    extends _$HotelStateCopyWithImpl<$Res, _$ErrorImpl>
    implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(
      _$ErrorImpl _value, $Res Function(_$ErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? e = freezed,
  }) {
    return _then(_$ErrorImpl(
      freezed == e
          ? _value.e
          : e // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$ErrorImpl implements Error {
  const _$ErrorImpl([this.e]);

  @override
  final String? e;

  @override
  String toString() {
    return 'HotelState.error(e: $e)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorImpl &&
            (identical(other.e, e) || other.e == e));
  }

  @override
  int get hashCode => Object.hash(runtimeType, e);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      __$$ErrorImplCopyWithImpl<_$ErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(HotelData hotelData) data,
    required TResult Function() loading,
    required TResult Function(String? e) error,
  }) {
    return error(e);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(HotelData hotelData)? data,
    TResult? Function()? loading,
    TResult? Function(String? e)? error,
  }) {
    return error?.call(e);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(HotelData hotelData)? data,
    TResult Function()? loading,
    TResult Function(String? e)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(e);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Data value) data,
    required TResult Function(Loading value) loading,
    required TResult Function(Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Data value)? data,
    TResult? Function(Loading value)? loading,
    TResult? Function(Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Data value)? data,
    TResult Function(Loading value)? loading,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class Error implements HotelState {
  const factory Error([final String? e]) = _$ErrorImpl;

  String? get e;
  @JsonKey(ignore: true)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

HotelData _$HotelDataFromJson(Map<String, dynamic> json) {
  return _HotelData.fromJson(json);
}

/// @nodoc
mixin _$HotelData {
  num get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get adress => throw _privateConstructorUsedError;
  num get minimal_price => throw _privateConstructorUsedError;
  String get price_for_it => throw _privateConstructorUsedError;
  num get rating => throw _privateConstructorUsedError;
  String get rating_name => throw _privateConstructorUsedError;
  List<dynamic> get image_urls => throw _privateConstructorUsedError;
  Map<String, dynamic> get about_the_hotel =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HotelDataCopyWith<HotelData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HotelDataCopyWith<$Res> {
  factory $HotelDataCopyWith(HotelData value, $Res Function(HotelData) then) =
      _$HotelDataCopyWithImpl<$Res, HotelData>;
  @useResult
  $Res call(
      {num id,
      String name,
      String adress,
      num minimal_price,
      String price_for_it,
      num rating,
      String rating_name,
      List<dynamic> image_urls,
      Map<String, dynamic> about_the_hotel});
}

/// @nodoc
class _$HotelDataCopyWithImpl<$Res, $Val extends HotelData>
    implements $HotelDataCopyWith<$Res> {
  _$HotelDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? adress = null,
    Object? minimal_price = null,
    Object? price_for_it = null,
    Object? rating = null,
    Object? rating_name = null,
    Object? image_urls = null,
    Object? about_the_hotel = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as num,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      adress: null == adress
          ? _value.adress
          : adress // ignore: cast_nullable_to_non_nullable
              as String,
      minimal_price: null == minimal_price
          ? _value.minimal_price
          : minimal_price // ignore: cast_nullable_to_non_nullable
              as num,
      price_for_it: null == price_for_it
          ? _value.price_for_it
          : price_for_it // ignore: cast_nullable_to_non_nullable
              as String,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as num,
      rating_name: null == rating_name
          ? _value.rating_name
          : rating_name // ignore: cast_nullable_to_non_nullable
              as String,
      image_urls: null == image_urls
          ? _value.image_urls
          : image_urls // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      about_the_hotel: null == about_the_hotel
          ? _value.about_the_hotel
          : about_the_hotel // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HotelDataImplCopyWith<$Res>
    implements $HotelDataCopyWith<$Res> {
  factory _$$HotelDataImplCopyWith(
          _$HotelDataImpl value, $Res Function(_$HotelDataImpl) then) =
      __$$HotelDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {num id,
      String name,
      String adress,
      num minimal_price,
      String price_for_it,
      num rating,
      String rating_name,
      List<dynamic> image_urls,
      Map<String, dynamic> about_the_hotel});
}

/// @nodoc
class __$$HotelDataImplCopyWithImpl<$Res>
    extends _$HotelDataCopyWithImpl<$Res, _$HotelDataImpl>
    implements _$$HotelDataImplCopyWith<$Res> {
  __$$HotelDataImplCopyWithImpl(
      _$HotelDataImpl _value, $Res Function(_$HotelDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? adress = null,
    Object? minimal_price = null,
    Object? price_for_it = null,
    Object? rating = null,
    Object? rating_name = null,
    Object? image_urls = null,
    Object? about_the_hotel = null,
  }) {
    return _then(_$HotelDataImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as num,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      adress: null == adress
          ? _value.adress
          : adress // ignore: cast_nullable_to_non_nullable
              as String,
      minimal_price: null == minimal_price
          ? _value.minimal_price
          : minimal_price // ignore: cast_nullable_to_non_nullable
              as num,
      price_for_it: null == price_for_it
          ? _value.price_for_it
          : price_for_it // ignore: cast_nullable_to_non_nullable
              as String,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as num,
      rating_name: null == rating_name
          ? _value.rating_name
          : rating_name // ignore: cast_nullable_to_non_nullable
              as String,
      image_urls: null == image_urls
          ? _value._image_urls
          : image_urls // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      about_the_hotel: null == about_the_hotel
          ? _value._about_the_hotel
          : about_the_hotel // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HotelDataImpl implements _HotelData {
  const _$HotelDataImpl(
      {required this.id,
      required this.name,
      required this.adress,
      required this.minimal_price,
      required this.price_for_it,
      required this.rating,
      required this.rating_name,
      required final List<dynamic> image_urls,
      required final Map<String, dynamic> about_the_hotel})
      : _image_urls = image_urls,
        _about_the_hotel = about_the_hotel;

  factory _$HotelDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$HotelDataImplFromJson(json);

  @override
  final num id;
  @override
  final String name;
  @override
  final String adress;
  @override
  final num minimal_price;
  @override
  final String price_for_it;
  @override
  final num rating;
  @override
  final String rating_name;
  final List<dynamic> _image_urls;
  @override
  List<dynamic> get image_urls {
    if (_image_urls is EqualUnmodifiableListView) return _image_urls;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_image_urls);
  }

  final Map<String, dynamic> _about_the_hotel;
  @override
  Map<String, dynamic> get about_the_hotel {
    if (_about_the_hotel is EqualUnmodifiableMapView) return _about_the_hotel;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_about_the_hotel);
  }

  @override
  String toString() {
    return 'HotelData(id: $id, name: $name, adress: $adress, minimal_price: $minimal_price, price_for_it: $price_for_it, rating: $rating, rating_name: $rating_name, image_urls: $image_urls, about_the_hotel: $about_the_hotel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HotelDataImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.adress, adress) || other.adress == adress) &&
            (identical(other.minimal_price, minimal_price) ||
                other.minimal_price == minimal_price) &&
            (identical(other.price_for_it, price_for_it) ||
                other.price_for_it == price_for_it) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.rating_name, rating_name) ||
                other.rating_name == rating_name) &&
            const DeepCollectionEquality()
                .equals(other._image_urls, _image_urls) &&
            const DeepCollectionEquality()
                .equals(other._about_the_hotel, _about_the_hotel));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      adress,
      minimal_price,
      price_for_it,
      rating,
      rating_name,
      const DeepCollectionEquality().hash(_image_urls),
      const DeepCollectionEquality().hash(_about_the_hotel));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HotelDataImplCopyWith<_$HotelDataImpl> get copyWith =>
      __$$HotelDataImplCopyWithImpl<_$HotelDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HotelDataImplToJson(
      this,
    );
  }
}

abstract class _HotelData implements HotelData {
  const factory _HotelData(
      {required final num id,
      required final String name,
      required final String adress,
      required final num minimal_price,
      required final String price_for_it,
      required final num rating,
      required final String rating_name,
      required final List<dynamic> image_urls,
      required final Map<String, dynamic> about_the_hotel}) = _$HotelDataImpl;

  factory _HotelData.fromJson(Map<String, dynamic> json) =
      _$HotelDataImpl.fromJson;

  @override
  num get id;
  @override
  String get name;
  @override
  String get adress;
  @override
  num get minimal_price;
  @override
  String get price_for_it;
  @override
  num get rating;
  @override
  String get rating_name;
  @override
  List<dynamic> get image_urls;
  @override
  Map<String, dynamic> get about_the_hotel;
  @override
  @JsonKey(ignore: true)
  _$$HotelDataImplCopyWith<_$HotelDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
