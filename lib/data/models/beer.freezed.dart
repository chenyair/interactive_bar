// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'beer.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Beer _$BeerFromJson(Map<String, dynamic> json) {
  return _Beer.fromJson(json);
}

/// @nodoc
class _$BeerTearOff {
  const _$BeerTearOff();

  _Beer call(
      {required String brandName,
      required double alcoholPercentages,
      required String icon,
      required Map<String, double> prices,
      required String style,
      required String colorHex}) {
    return _Beer(
      brandName: brandName,
      alcoholPercentages: alcoholPercentages,
      icon: icon,
      prices: prices,
      style: style,
      colorHex: colorHex,
    );
  }

  Beer fromJson(Map<String, Object> json) {
    return Beer.fromJson(json);
  }
}

/// @nodoc
const $Beer = _$BeerTearOff();

/// @nodoc
mixin _$Beer {
  String get brandName => throw _privateConstructorUsedError;
  double get alcoholPercentages => throw _privateConstructorUsedError;
  String get icon => throw _privateConstructorUsedError;
  Map<String, double> get prices => throw _privateConstructorUsedError;
  String get style => throw _privateConstructorUsedError;
  String get colorHex => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BeerCopyWith<Beer> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BeerCopyWith<$Res> {
  factory $BeerCopyWith(Beer value, $Res Function(Beer) then) =
      _$BeerCopyWithImpl<$Res>;
  $Res call(
      {String brandName,
      double alcoholPercentages,
      String icon,
      Map<String, double> prices,
      String style,
      String colorHex});
}

/// @nodoc
class _$BeerCopyWithImpl<$Res> implements $BeerCopyWith<$Res> {
  _$BeerCopyWithImpl(this._value, this._then);

  final Beer _value;
  // ignore: unused_field
  final $Res Function(Beer) _then;

  @override
  $Res call({
    Object? brandName = freezed,
    Object? alcoholPercentages = freezed,
    Object? icon = freezed,
    Object? prices = freezed,
    Object? style = freezed,
    Object? colorHex = freezed,
  }) {
    return _then(_value.copyWith(
      brandName: brandName == freezed
          ? _value.brandName
          : brandName // ignore: cast_nullable_to_non_nullable
              as String,
      alcoholPercentages: alcoholPercentages == freezed
          ? _value.alcoholPercentages
          : alcoholPercentages // ignore: cast_nullable_to_non_nullable
              as double,
      icon: icon == freezed
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String,
      prices: prices == freezed
          ? _value.prices
          : prices // ignore: cast_nullable_to_non_nullable
              as Map<String, double>,
      style: style == freezed
          ? _value.style
          : style // ignore: cast_nullable_to_non_nullable
              as String,
      colorHex: colorHex == freezed
          ? _value.colorHex
          : colorHex // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$BeerCopyWith<$Res> implements $BeerCopyWith<$Res> {
  factory _$BeerCopyWith(_Beer value, $Res Function(_Beer) then) =
      __$BeerCopyWithImpl<$Res>;
  @override
  $Res call(
      {String brandName,
      double alcoholPercentages,
      String icon,
      Map<String, double> prices,
      String style,
      String colorHex});
}

/// @nodoc
class __$BeerCopyWithImpl<$Res> extends _$BeerCopyWithImpl<$Res>
    implements _$BeerCopyWith<$Res> {
  __$BeerCopyWithImpl(_Beer _value, $Res Function(_Beer) _then)
      : super(_value, (v) => _then(v as _Beer));

  @override
  _Beer get _value => super._value as _Beer;

  @override
  $Res call({
    Object? brandName = freezed,
    Object? alcoholPercentages = freezed,
    Object? icon = freezed,
    Object? prices = freezed,
    Object? style = freezed,
    Object? colorHex = freezed,
  }) {
    return _then(_Beer(
      brandName: brandName == freezed
          ? _value.brandName
          : brandName // ignore: cast_nullable_to_non_nullable
              as String,
      alcoholPercentages: alcoholPercentages == freezed
          ? _value.alcoholPercentages
          : alcoholPercentages // ignore: cast_nullable_to_non_nullable
              as double,
      icon: icon == freezed
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String,
      prices: prices == freezed
          ? _value.prices
          : prices // ignore: cast_nullable_to_non_nullable
              as Map<String, double>,
      style: style == freezed
          ? _value.style
          : style // ignore: cast_nullable_to_non_nullable
              as String,
      colorHex: colorHex == freezed
          ? _value.colorHex
          : colorHex // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_Beer implements _Beer {
  const _$_Beer(
      {required this.brandName,
      required this.alcoholPercentages,
      required this.icon,
      required this.prices,
      required this.style,
      required this.colorHex});

  factory _$_Beer.fromJson(Map<String, dynamic> json) =>
      _$_$_BeerFromJson(json);

  @override
  final String brandName;
  @override
  final double alcoholPercentages;
  @override
  final String icon;
  @override
  final Map<String, double> prices;
  @override
  final String style;
  @override
  final String colorHex;

  @override
  String toString() {
    return 'Beer(brandName: $brandName, alcoholPercentages: $alcoholPercentages, icon: $icon, prices: $prices, style: $style, colorHex: $colorHex)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Beer &&
            (identical(other.brandName, brandName) ||
                const DeepCollectionEquality()
                    .equals(other.brandName, brandName)) &&
            (identical(other.alcoholPercentages, alcoholPercentages) ||
                const DeepCollectionEquality()
                    .equals(other.alcoholPercentages, alcoholPercentages)) &&
            (identical(other.icon, icon) ||
                const DeepCollectionEquality().equals(other.icon, icon)) &&
            (identical(other.prices, prices) ||
                const DeepCollectionEquality().equals(other.prices, prices)) &&
            (identical(other.style, style) ||
                const DeepCollectionEquality().equals(other.style, style)) &&
            (identical(other.colorHex, colorHex) ||
                const DeepCollectionEquality()
                    .equals(other.colorHex, colorHex)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(brandName) ^
      const DeepCollectionEquality().hash(alcoholPercentages) ^
      const DeepCollectionEquality().hash(icon) ^
      const DeepCollectionEquality().hash(prices) ^
      const DeepCollectionEquality().hash(style) ^
      const DeepCollectionEquality().hash(colorHex);

  @JsonKey(ignore: true)
  @override
  _$BeerCopyWith<_Beer> get copyWith =>
      __$BeerCopyWithImpl<_Beer>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_BeerToJson(this);
  }
}

abstract class _Beer implements Beer {
  const factory _Beer(
      {required String brandName,
      required double alcoholPercentages,
      required String icon,
      required Map<String, double> prices,
      required String style,
      required String colorHex}) = _$_Beer;

  factory _Beer.fromJson(Map<String, dynamic> json) = _$_Beer.fromJson;

  @override
  String get brandName => throw _privateConstructorUsedError;
  @override
  double get alcoholPercentages => throw _privateConstructorUsedError;
  @override
  String get icon => throw _privateConstructorUsedError;
  @override
  Map<String, double> get prices => throw _privateConstructorUsedError;
  @override
  String get style => throw _privateConstructorUsedError;
  @override
  String get colorHex => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$BeerCopyWith<_Beer> get copyWith => throw _privateConstructorUsedError;
}
