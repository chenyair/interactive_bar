// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'beer.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Beer _$_$_BeerFromJson(Map<String, dynamic> json) {
  return _$_Beer(
    brandName: json['brandName'] as String,
    alcoholPercentages: (json['alcoholPercentages'] as num).toDouble(),
    icon: json['icon'] as String,
    prices: (json['prices'] as Map<String, dynamic>).map(
      (k, e) => MapEntry(k, (e as num).toDouble()),
    ),
    style: json['style'] as String,
    colorHex: json['colorHex'] as String,
  );
}

Map<String, dynamic> _$_$_BeerToJson(_$_Beer instance) => <String, dynamic>{
      'brandName': instance.brandName,
      'alcoholPercentages': instance.alcoholPercentages,
      'icon': instance.icon,
      'prices': instance.prices,
      'style': instance.style,
      'colorHex': instance.colorHex,
    };
