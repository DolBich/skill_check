// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'api_reservation.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ReservationState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ReservationData reservationData) data,
    required TResult Function() loading,
    required TResult Function(String? e) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ReservationData reservationData)? data,
    TResult? Function()? loading,
    TResult? Function(String? e)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ReservationData reservationData)? data,
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
abstract class $ReservationStateCopyWith<$Res> {
  factory $ReservationStateCopyWith(
          ReservationState value, $Res Function(ReservationState) then) =
      _$ReservationStateCopyWithImpl<$Res, ReservationState>;
}

/// @nodoc
class _$ReservationStateCopyWithImpl<$Res, $Val extends ReservationState>
    implements $ReservationStateCopyWith<$Res> {
  _$ReservationStateCopyWithImpl(this._value, this._then);

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
  $Res call({ReservationData reservationData});

  $ReservationDataCopyWith<$Res> get reservationData;
}

/// @nodoc
class __$$DataImplCopyWithImpl<$Res>
    extends _$ReservationStateCopyWithImpl<$Res, _$DataImpl>
    implements _$$DataImplCopyWith<$Res> {
  __$$DataImplCopyWithImpl(_$DataImpl _value, $Res Function(_$DataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reservationData = null,
  }) {
    return _then(_$DataImpl(
      null == reservationData
          ? _value.reservationData
          : reservationData // ignore: cast_nullable_to_non_nullable
              as ReservationData,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ReservationDataCopyWith<$Res> get reservationData {
    return $ReservationDataCopyWith<$Res>(_value.reservationData, (value) {
      return _then(_value.copyWith(reservationData: value));
    });
  }
}

/// @nodoc

class _$DataImpl implements Data {
  const _$DataImpl(this.reservationData);

  @override
  final ReservationData reservationData;

  @override
  String toString() {
    return 'ReservationState.data(reservationData: $reservationData)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataImpl &&
            (identical(other.reservationData, reservationData) ||
                other.reservationData == reservationData));
  }

  @override
  int get hashCode => Object.hash(runtimeType, reservationData);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DataImplCopyWith<_$DataImpl> get copyWith =>
      __$$DataImplCopyWithImpl<_$DataImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ReservationData reservationData) data,
    required TResult Function() loading,
    required TResult Function(String? e) error,
  }) {
    return data(reservationData);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ReservationData reservationData)? data,
    TResult? Function()? loading,
    TResult? Function(String? e)? error,
  }) {
    return data?.call(reservationData);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ReservationData reservationData)? data,
    TResult Function()? loading,
    TResult Function(String? e)? error,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(reservationData);
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

abstract class Data implements ReservationState {
  const factory Data(final ReservationData reservationData) = _$DataImpl;

  ReservationData get reservationData;
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
    extends _$ReservationStateCopyWithImpl<$Res, _$LoadingImpl>
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
    return 'ReservationState.loading()';
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
    required TResult Function(ReservationData reservationData) data,
    required TResult Function() loading,
    required TResult Function(String? e) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ReservationData reservationData)? data,
    TResult? Function()? loading,
    TResult? Function(String? e)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ReservationData reservationData)? data,
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

abstract class Loading implements ReservationState {
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
    extends _$ReservationStateCopyWithImpl<$Res, _$ErrorImpl>
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
    return 'ReservationState.error(e: $e)';
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
    required TResult Function(ReservationData reservationData) data,
    required TResult Function() loading,
    required TResult Function(String? e) error,
  }) {
    return error(e);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ReservationData reservationData)? data,
    TResult? Function()? loading,
    TResult? Function(String? e)? error,
  }) {
    return error?.call(e);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ReservationData reservationData)? data,
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

abstract class Error implements ReservationState {
  const factory Error([final String? e]) = _$ErrorImpl;

  String? get e;
  @JsonKey(ignore: true)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ReservationData _$ReservationDataFromJson(Map<String, dynamic> json) {
  return _ReservationData.fromJson(json);
}

/// @nodoc
mixin _$ReservationData {
  num get id => throw _privateConstructorUsedError;
  String get hotel_name => throw _privateConstructorUsedError;
  String get hotel_adress => throw _privateConstructorUsedError;
  num get horating => throw _privateConstructorUsedError;
  String get rating_name => throw _privateConstructorUsedError;
  String get departure => throw _privateConstructorUsedError;
  String get arrival_country => throw _privateConstructorUsedError;
  String get tour_date_start => throw _privateConstructorUsedError;
  String get tour_date_stop => throw _privateConstructorUsedError;
  num get number_of_nights => throw _privateConstructorUsedError;
  String get room => throw _privateConstructorUsedError;
  String get nutrition => throw _privateConstructorUsedError;
  num get tour_price => throw _privateConstructorUsedError;
  num get fuel_charge => throw _privateConstructorUsedError;
  num get service_charge => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReservationDataCopyWith<ReservationData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReservationDataCopyWith<$Res> {
  factory $ReservationDataCopyWith(
          ReservationData value, $Res Function(ReservationData) then) =
      _$ReservationDataCopyWithImpl<$Res, ReservationData>;
  @useResult
  $Res call(
      {num id,
      String hotel_name,
      String hotel_adress,
      num horating,
      String rating_name,
      String departure,
      String arrival_country,
      String tour_date_start,
      String tour_date_stop,
      num number_of_nights,
      String room,
      String nutrition,
      num tour_price,
      num fuel_charge,
      num service_charge});
}

/// @nodoc
class _$ReservationDataCopyWithImpl<$Res, $Val extends ReservationData>
    implements $ReservationDataCopyWith<$Res> {
  _$ReservationDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? hotel_name = null,
    Object? hotel_adress = null,
    Object? horating = null,
    Object? rating_name = null,
    Object? departure = null,
    Object? arrival_country = null,
    Object? tour_date_start = null,
    Object? tour_date_stop = null,
    Object? number_of_nights = null,
    Object? room = null,
    Object? nutrition = null,
    Object? tour_price = null,
    Object? fuel_charge = null,
    Object? service_charge = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as num,
      hotel_name: null == hotel_name
          ? _value.hotel_name
          : hotel_name // ignore: cast_nullable_to_non_nullable
              as String,
      hotel_adress: null == hotel_adress
          ? _value.hotel_adress
          : hotel_adress // ignore: cast_nullable_to_non_nullable
              as String,
      horating: null == horating
          ? _value.horating
          : horating // ignore: cast_nullable_to_non_nullable
              as num,
      rating_name: null == rating_name
          ? _value.rating_name
          : rating_name // ignore: cast_nullable_to_non_nullable
              as String,
      departure: null == departure
          ? _value.departure
          : departure // ignore: cast_nullable_to_non_nullable
              as String,
      arrival_country: null == arrival_country
          ? _value.arrival_country
          : arrival_country // ignore: cast_nullable_to_non_nullable
              as String,
      tour_date_start: null == tour_date_start
          ? _value.tour_date_start
          : tour_date_start // ignore: cast_nullable_to_non_nullable
              as String,
      tour_date_stop: null == tour_date_stop
          ? _value.tour_date_stop
          : tour_date_stop // ignore: cast_nullable_to_non_nullable
              as String,
      number_of_nights: null == number_of_nights
          ? _value.number_of_nights
          : number_of_nights // ignore: cast_nullable_to_non_nullable
              as num,
      room: null == room
          ? _value.room
          : room // ignore: cast_nullable_to_non_nullable
              as String,
      nutrition: null == nutrition
          ? _value.nutrition
          : nutrition // ignore: cast_nullable_to_non_nullable
              as String,
      tour_price: null == tour_price
          ? _value.tour_price
          : tour_price // ignore: cast_nullable_to_non_nullable
              as num,
      fuel_charge: null == fuel_charge
          ? _value.fuel_charge
          : fuel_charge // ignore: cast_nullable_to_non_nullable
              as num,
      service_charge: null == service_charge
          ? _value.service_charge
          : service_charge // ignore: cast_nullable_to_non_nullable
              as num,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ReservationDataImplCopyWith<$Res>
    implements $ReservationDataCopyWith<$Res> {
  factory _$$ReservationDataImplCopyWith(_$ReservationDataImpl value,
          $Res Function(_$ReservationDataImpl) then) =
      __$$ReservationDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {num id,
      String hotel_name,
      String hotel_adress,
      num horating,
      String rating_name,
      String departure,
      String arrival_country,
      String tour_date_start,
      String tour_date_stop,
      num number_of_nights,
      String room,
      String nutrition,
      num tour_price,
      num fuel_charge,
      num service_charge});
}

/// @nodoc
class __$$ReservationDataImplCopyWithImpl<$Res>
    extends _$ReservationDataCopyWithImpl<$Res, _$ReservationDataImpl>
    implements _$$ReservationDataImplCopyWith<$Res> {
  __$$ReservationDataImplCopyWithImpl(
      _$ReservationDataImpl _value, $Res Function(_$ReservationDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? hotel_name = null,
    Object? hotel_adress = null,
    Object? horating = null,
    Object? rating_name = null,
    Object? departure = null,
    Object? arrival_country = null,
    Object? tour_date_start = null,
    Object? tour_date_stop = null,
    Object? number_of_nights = null,
    Object? room = null,
    Object? nutrition = null,
    Object? tour_price = null,
    Object? fuel_charge = null,
    Object? service_charge = null,
  }) {
    return _then(_$ReservationDataImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as num,
      hotel_name: null == hotel_name
          ? _value.hotel_name
          : hotel_name // ignore: cast_nullable_to_non_nullable
              as String,
      hotel_adress: null == hotel_adress
          ? _value.hotel_adress
          : hotel_adress // ignore: cast_nullable_to_non_nullable
              as String,
      horating: null == horating
          ? _value.horating
          : horating // ignore: cast_nullable_to_non_nullable
              as num,
      rating_name: null == rating_name
          ? _value.rating_name
          : rating_name // ignore: cast_nullable_to_non_nullable
              as String,
      departure: null == departure
          ? _value.departure
          : departure // ignore: cast_nullable_to_non_nullable
              as String,
      arrival_country: null == arrival_country
          ? _value.arrival_country
          : arrival_country // ignore: cast_nullable_to_non_nullable
              as String,
      tour_date_start: null == tour_date_start
          ? _value.tour_date_start
          : tour_date_start // ignore: cast_nullable_to_non_nullable
              as String,
      tour_date_stop: null == tour_date_stop
          ? _value.tour_date_stop
          : tour_date_stop // ignore: cast_nullable_to_non_nullable
              as String,
      number_of_nights: null == number_of_nights
          ? _value.number_of_nights
          : number_of_nights // ignore: cast_nullable_to_non_nullable
              as num,
      room: null == room
          ? _value.room
          : room // ignore: cast_nullable_to_non_nullable
              as String,
      nutrition: null == nutrition
          ? _value.nutrition
          : nutrition // ignore: cast_nullable_to_non_nullable
              as String,
      tour_price: null == tour_price
          ? _value.tour_price
          : tour_price // ignore: cast_nullable_to_non_nullable
              as num,
      fuel_charge: null == fuel_charge
          ? _value.fuel_charge
          : fuel_charge // ignore: cast_nullable_to_non_nullable
              as num,
      service_charge: null == service_charge
          ? _value.service_charge
          : service_charge // ignore: cast_nullable_to_non_nullable
              as num,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ReservationDataImpl implements _ReservationData {
  const _$ReservationDataImpl(
      {required this.id,
      required this.hotel_name,
      required this.hotel_adress,
      required this.horating,
      required this.rating_name,
      required this.departure,
      required this.arrival_country,
      required this.tour_date_start,
      required this.tour_date_stop,
      required this.number_of_nights,
      required this.room,
      required this.nutrition,
      required this.tour_price,
      required this.fuel_charge,
      required this.service_charge});

  factory _$ReservationDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReservationDataImplFromJson(json);

  @override
  final num id;
  @override
  final String hotel_name;
  @override
  final String hotel_adress;
  @override
  final num horating;
  @override
  final String rating_name;
  @override
  final String departure;
  @override
  final String arrival_country;
  @override
  final String tour_date_start;
  @override
  final String tour_date_stop;
  @override
  final num number_of_nights;
  @override
  final String room;
  @override
  final String nutrition;
  @override
  final num tour_price;
  @override
  final num fuel_charge;
  @override
  final num service_charge;

  @override
  String toString() {
    return 'ReservationData(id: $id, hotel_name: $hotel_name, hotel_adress: $hotel_adress, horating: $horating, rating_name: $rating_name, departure: $departure, arrival_country: $arrival_country, tour_date_start: $tour_date_start, tour_date_stop: $tour_date_stop, number_of_nights: $number_of_nights, room: $room, nutrition: $nutrition, tour_price: $tour_price, fuel_charge: $fuel_charge, service_charge: $service_charge)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReservationDataImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.hotel_name, hotel_name) ||
                other.hotel_name == hotel_name) &&
            (identical(other.hotel_adress, hotel_adress) ||
                other.hotel_adress == hotel_adress) &&
            (identical(other.horating, horating) ||
                other.horating == horating) &&
            (identical(other.rating_name, rating_name) ||
                other.rating_name == rating_name) &&
            (identical(other.departure, departure) ||
                other.departure == departure) &&
            (identical(other.arrival_country, arrival_country) ||
                other.arrival_country == arrival_country) &&
            (identical(other.tour_date_start, tour_date_start) ||
                other.tour_date_start == tour_date_start) &&
            (identical(other.tour_date_stop, tour_date_stop) ||
                other.tour_date_stop == tour_date_stop) &&
            (identical(other.number_of_nights, number_of_nights) ||
                other.number_of_nights == number_of_nights) &&
            (identical(other.room, room) || other.room == room) &&
            (identical(other.nutrition, nutrition) ||
                other.nutrition == nutrition) &&
            (identical(other.tour_price, tour_price) ||
                other.tour_price == tour_price) &&
            (identical(other.fuel_charge, fuel_charge) ||
                other.fuel_charge == fuel_charge) &&
            (identical(other.service_charge, service_charge) ||
                other.service_charge == service_charge));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      hotel_name,
      hotel_adress,
      horating,
      rating_name,
      departure,
      arrival_country,
      tour_date_start,
      tour_date_stop,
      number_of_nights,
      room,
      nutrition,
      tour_price,
      fuel_charge,
      service_charge);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ReservationDataImplCopyWith<_$ReservationDataImpl> get copyWith =>
      __$$ReservationDataImplCopyWithImpl<_$ReservationDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReservationDataImplToJson(
      this,
    );
  }
}

abstract class _ReservationData implements ReservationData {
  const factory _ReservationData(
      {required final num id,
      required final String hotel_name,
      required final String hotel_adress,
      required final num horating,
      required final String rating_name,
      required final String departure,
      required final String arrival_country,
      required final String tour_date_start,
      required final String tour_date_stop,
      required final num number_of_nights,
      required final String room,
      required final String nutrition,
      required final num tour_price,
      required final num fuel_charge,
      required final num service_charge}) = _$ReservationDataImpl;

  factory _ReservationData.fromJson(Map<String, dynamic> json) =
      _$ReservationDataImpl.fromJson;

  @override
  num get id;
  @override
  String get hotel_name;
  @override
  String get hotel_adress;
  @override
  num get horating;
  @override
  String get rating_name;
  @override
  String get departure;
  @override
  String get arrival_country;
  @override
  String get tour_date_start;
  @override
  String get tour_date_stop;
  @override
  num get number_of_nights;
  @override
  String get room;
  @override
  String get nutrition;
  @override
  num get tour_price;
  @override
  num get fuel_charge;
  @override
  num get service_charge;
  @override
  @JsonKey(ignore: true)
  _$$ReservationDataImplCopyWith<_$ReservationDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
