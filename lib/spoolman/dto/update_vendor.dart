import 'extra_fields.dart';
export 'extra_fields.dart';
class UpdateVendor {
  const UpdateVendor({
    required this.id,
    this.name,
    this.description,
    this.spoolWeight,
    this.externalId,
    this.comment,
    this.extra,
  });

  final int id;
  final String? name;
  final String? description;
  final double? spoolWeight;
  final String? externalId;
  final String? comment;
  final ExtraFields? extra;
}
