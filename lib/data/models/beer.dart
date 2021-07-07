import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'beer.freezed.dart';
part 'beer.g.dart';

@freezed
class Beer with _$Beer {
  const factory Beer({
    required String brandName,
    required double alcoholPercentages,
    required String icon,
    required Map<String, double> prices,
    required String style,
    required String colorHex,
  }) = _Beer;

  factory Beer.fromJson(Map<String, dynamic> json) => _$BeerFromJson(json);

  factory Beer.fromDoc(DocumentSnapshot doc) {
    final docData = doc.data()! as Map<String, dynamic>;
    return Beer.fromJson(docData);
  }
}
