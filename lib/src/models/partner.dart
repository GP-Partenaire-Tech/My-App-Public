import 'package:freezed_annotation/freezed_annotation.dart';

import 'gender.dart';

part 'partner.freezed.dart';
part 'partner.g.dart';

@Freezed(fromJson: true, toJson: true)
abstract class Partner with _$Partner {
  const factory Partner({
    required String id,
    String? firstName,
    String? alias,
    int? age,
    required Gender gender,
    int? hair,
    int? eyes,
    int? skin,
    int? height,
    int? penisSize,
    int? chestSize,
    String? notes,
    required DateTime createdAt,
  }) = _Partner;

  factory Partner.fromJson(Map<String, dynamic> json) => _$PartnerFromJson(json);
}
