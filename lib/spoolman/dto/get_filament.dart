import 'extra_fields.dart';
export 'extra_fields.dart';
import 'get_vendor.dart';
import 'spoolman_dto_mixin.dart';
class GetFilament with SpoolmanDtoMixin {
  GetFilament({
    required this.id,
    DateTime? registered,
    this.firstUsed,
    this.name = '',
    this.vendor,
    this.material,
    this.price,
    this.density,
    this.diameter = 1.75,
    this.weight,
    this.spoolWeight,
    this.articleNumber,
    this.description,
    this.comment,
    this.colorHex,
    this.settingsExtruderTemp,
    this.settingsBedTemp,
    this.extra,
  }) : registered = registered ?? DateTime.now();

  @override
  final int id;
  @override
  final DateTime registered;
  final DateTime? firstUsed;
  final String name;
  final GetVendor? vendor;
  final String? material;
  final double? price;
  final double? density;
  final double diameter;
  final double? weight;
  final double? spoolWeight;
  final String? articleNumber;
  final String? description;
  @override
  final String? comment;
  final String? colorHex;
  final int? settingsExtruderTemp;
  final int? settingsBedTemp;
  final ExtraFields? extra;

  GetFilament copyWith({
    int? id,
    DateTime? registered,
    DateTime? firstUsed,
    String? name,
    GetVendor? vendor,
    String? material,
    double? price,
    double? density,
    double? diameter,
    double? weight,
    double? spoolWeight,
    String? articleNumber,
    String? description,
    String? comment,
    String? colorHex,
    int? settingsExtruderTemp,
    int? settingsBedTemp,
    ExtraFields? extra,
  }) {
    return GetFilament(
      id: id ?? this.id,
      registered: registered ?? this.registered,
      firstUsed: firstUsed ?? this.firstUsed,
      name: name ?? this.name,
      vendor: vendor ?? this.vendor,
      material: material ?? this.material,
      price: price ?? this.price,
      density: density ?? this.density,
      diameter: diameter ?? this.diameter,
      weight: weight ?? this.weight,
      spoolWeight: spoolWeight ?? this.spoolWeight,
      articleNumber: articleNumber ?? this.articleNumber,
      description: description ?? this.description,
      comment: comment ?? this.comment,
      colorHex: colorHex ?? this.colorHex,
      settingsExtruderTemp: settingsExtruderTemp ?? this.settingsExtruderTemp,
      settingsBedTemp: settingsBedTemp ?? this.settingsBedTemp,
      extra: extra ?? this.extra,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'registered': registered.toIso8601String(),
      'firstUsed': firstUsed?.toIso8601String(),
      'name': name,
      'vendor': vendor?.toJson(),
      'material': material,
      'price': price,
      'density': density,
      'diameter': diameter,
      'weight': weight,
      'spool_weight': spoolWeight,
      'article_number': articleNumber,
      'description': description,
      'comment': comment,
      'color_hex': colorHex,
      'settings': {
        'extruder_temp': settingsExtruderTemp,
        'bed_temp': settingsBedTemp,
      },
      'extra': extra?.toJson(),
    };
  }

  static GetFilament fromJson(Map<String, dynamic> json) {
    final settings = json['settings'] as Map?;
    return GetFilament(
      id: (json['id'] as num).toInt(),
      registered: DateTime.tryParse(json['registered'] as String? ?? ''),
      firstUsed: DateTime.tryParse(json['first_used'] as String? ?? json['firstUsed'] as String? ?? ''),
      name: json['name'] as String? ?? '',
      vendor: json['vendor'] == null ? null : GetVendor.fromJson(Map<String, dynamic>.from(json['vendor'] as Map)),
      material: json['material'] as String?,
      price: (json['price'] as num?)?.toDouble(),
      density: (json['density'] as num?)?.toDouble(),
      diameter: ((json['diameter'] as num?) ?? 1.75).toDouble(),
      weight: (json['weight'] as num?)?.toDouble(),
      spoolWeight: (json['spool_weight'] as num?)?.toDouble() ?? (json['spoolWeight'] as num?)?.toDouble(),
      articleNumber: json['article_number'] as String? ?? json['articleNumber'] as String?,
      description: json['description'] as String?,
      comment: json['comment'] as String?,
      colorHex: json['color_hex'] as String? ?? json['colorHex'] as String?,
      settingsExtruderTemp: settings == null ? null : (settings['extruder_temp'] as num?)?.toInt(),
      settingsBedTemp: settings == null ? null : (settings['bed_temp'] as num?)?.toInt(),
      extra: ExtraFields.fromJson(json['extra']),
    );
  }
}
