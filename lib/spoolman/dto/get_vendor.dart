import 'extra_fields.dart';
export 'extra_fields.dart';
import 'spoolman_dto_mixin.dart';
class GetVendor with SpoolmanDtoMixin {
  GetVendor({
    required this.id,
    DateTime? registered,
    this.name = '',
    this.description,
    this.spoolWeight,
    this.externalId,
    this.comment,
    this.extra,
  }) : registered = registered ?? DateTime.now();

  @override
  final int id;
  @override
  final DateTime registered;
  final String name;
  final String? description;
  final double? spoolWeight;
  final String? externalId;
  @override
  final String? comment;
  final ExtraFields? extra;

  GetVendor copyWith({
    int? id,
    DateTime? registered,
    String? name,
    String? description,
    double? spoolWeight,
    String? externalId,
    String? comment,
    ExtraFields? extra,
  }) {
    return GetVendor(
      id: id ?? this.id,
      registered: registered ?? this.registered,
      name: name ?? this.name,
      description: description ?? this.description,
      spoolWeight: spoolWeight ?? this.spoolWeight,
      externalId: externalId ?? this.externalId,
      comment: comment ?? this.comment,
      extra: extra ?? this.extra,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'registered': registered.toIso8601String(),
      'name': name,
      'description': description,
      'spoolWeight': spoolWeight,
      'externalId': externalId,
      'comment': comment,
      'extra': extra?.toJson(),
    };
  }

  static GetVendor fromJson(Map<String, dynamic> json) {
    return GetVendor(
      id: (json['id'] as num).toInt(),
      registered: DateTime.tryParse(json['registered'] as String? ?? ''),
      name: json['name'] as String? ?? '',
      description: json['description'] as String?,
      spoolWeight: (json['spool_weight'] as num?)?.toDouble() ?? (json['spoolWeight'] as num?)?.toDouble(),
      externalId: json['external_id'] as String? ?? json['externalId'] as String?,
      comment: json['comment'] as String?,
      extra: ExtraFields.fromJson(json['extra']),
    );
  }
}
