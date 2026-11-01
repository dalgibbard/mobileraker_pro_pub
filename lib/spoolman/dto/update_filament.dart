import 'get_filament.dart';
import 'get_vendor.dart';
import 'extra_fields.dart';
export 'extra_fields.dart';
class UpdateFilament {
  const UpdateFilament({
    required this.id,
    this.name,
    this.vendor,
    this.material,
    this.price,
    this.density,
    this.diameter,
    this.weight,
    this.spoolWeight,
    this.articleNumber,
    this.description,
    this.comment,
    this.colorHex,
    this.settingsExtruderTemp,
    this.settingsBedTemp,
    this.extra,
  });

  final int id;
  final String? name;
  final GetVendor? vendor;
  final String? material;
  final double? price;
  final double? density;
  final double? diameter;
  final double? weight;
  final double? spoolWeight;
  final String? articleNumber;
  final String? description;
  final String? comment;
  final String? colorHex;
  final int? settingsExtruderTemp;
  final int? settingsBedTemp;
  final ExtraFields? extra;
}
