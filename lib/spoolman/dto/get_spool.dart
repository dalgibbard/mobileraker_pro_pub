import 'extra_fields.dart';
export 'extra_fields.dart';
import 'get_filament.dart';
import 'spoolman_dto_mixin.dart';
class GetSpool with SpoolmanDtoMixin {
  GetSpool({
    required this.id,
    DateTime? registered,
    this.firstUsed,
    this.lastUsed,
    GetFilament? filament,
    this.price,
    this.initialWeight,
    this.usedWeight = 0.0,
    this.remainingWeight,
    this.spoolWeight,
    this.usedLength = 0.0,
    this.remainingLength,
    this.threadUrl,
    this.location,
    this.lotNr,
    bool? archived,
    this.comment,
    this.extra,
  })  : registered = registered ?? DateTime.now(),
        filament = filament ?? GetFilament(id: 0),
        archived = archived ?? false;

  @override
  final int id;
  @override
  final DateTime registered;
  final DateTime? firstUsed;
  final DateTime? lastUsed;
  final GetFilament filament;
  final double? price;
  final double? initialWeight;
  final double usedWeight;
  final double? remainingWeight;
  final double? spoolWeight;
  final double usedLength;
  final double? remainingLength;
  final String? threadUrl;
  final String? location;
  final String? lotNr;
  final bool archived;
  @override
  final String? comment;
  final ExtraFields? extra;

  @override
  String get name => filament.name;

  double? get progress {
    final total = initialWeight ?? spoolWeight;
    if (total == null || total == 0) return null;
    return (usedWeight ?? 0) / total;
  }

  GetSpool copyWith({
    int? id,
    DateTime? registered,
    DateTime? firstUsed,
    DateTime? lastUsed,
    GetFilament? filament,
    double? price,
    double? initialWeight,
    double? usedWeight,
    double? remainingWeight,
    double? spoolWeight,
    double? usedLength,
    double? remainingLength,
    String? threadUrl,
    String? location,
    String? lotNr,
    bool? archived,
    String? comment,
    ExtraFields? extra,
  }) {
    return GetSpool(
      id: id ?? this.id,
      registered: registered ?? this.registered,
      firstUsed: firstUsed ?? this.firstUsed,
      lastUsed: lastUsed ?? this.lastUsed,
      filament: filament ?? this.filament,
      price: price ?? this.price,
      initialWeight: initialWeight ?? this.initialWeight,
      usedWeight: usedWeight ?? this.usedWeight,
      remainingWeight: remainingWeight ?? this.remainingWeight,
      spoolWeight: spoolWeight ?? this.spoolWeight,
      usedLength: usedLength ?? this.usedLength,
      remainingLength: remainingLength ?? this.remainingLength,
      threadUrl: threadUrl ?? this.threadUrl,
      location: location ?? this.location,
      lotNr: lotNr ?? this.lotNr,
      archived: archived ?? this.archived,
      comment: comment ?? this.comment,
      extra: extra ?? this.extra,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'registered': registered.toIso8601String(),
      'first_used': firstUsed?.toIso8601String(),
      'last_used': lastUsed?.toIso8601String(),
      'filament': filament.toJson(),
      'price': price,
      'initial_weight': initialWeight,
      'used_weight': usedWeight,
      'remaining_weight': remainingWeight,
      'spool_weight': spoolWeight,
      'used_length': usedLength,
      'remaining_length': remainingLength,
      'thread_url': threadUrl,
      'location': location,
      'lot_nr': lotNr,
      'archived': archived,
      'comment': comment,
      'extra': extra?.toJson(),
    };
  }

  static GetSpool fromJson(Map<String, dynamic> json) {
    return GetSpool(
      id: (json['id'] as num).toInt(),
      registered: DateTime.tryParse(json['registered'] as String? ?? ''),
      firstUsed: DateTime.tryParse(json['first_used'] as String? ?? ''),
      lastUsed: DateTime.tryParse(json['last_used'] as String? ?? ''),
      filament: json['filament'] == null ? null : GetFilament.fromJson(Map<String, dynamic>.from(json['filament'] as Map)),
      price: (json['price'] as num?)?.toDouble(),
      initialWeight: (json['initial_weight'] as num?)?.toDouble(),
      usedWeight: (json['used_weight'] as num?)?.toDouble() ?? 0.0,
      remainingWeight: (json['remaining_weight'] as num?)?.toDouble(),
      spoolWeight: (json['spool_weight'] as num?)?.toDouble(),
      usedLength: (json['used_length'] as num?)?.toDouble() ?? 0.0,
      remainingLength: (json['remaining_length'] as num?)?.toDouble(),
      threadUrl: json['thread_url'] as String?,
      location: json['location'] as String?,
      lotNr: json['lot_nr'] as String?,
      archived: json['archived'] as bool?,
      comment: json['comment'] as String?,
      extra: ExtraFields.fromJson(json['extra']),
    );
  }
}
