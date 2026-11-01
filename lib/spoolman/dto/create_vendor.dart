import 'extra_fields.dart';
export 'extra_fields.dart';
class CreateVendor {
  const CreateVendor({
    this.id,
    this.registered,
    this.name,
    this.description,
    this.spoolWeight,
    this.externalId,
    this.comment,
    this.extra,
  });

  final int? id;
  final DateTime? registered;
  final String? name;
  final String? description;
  final double? spoolWeight;
  final String? externalId;
  final String? comment;
  final ExtraFields? extra;
}
