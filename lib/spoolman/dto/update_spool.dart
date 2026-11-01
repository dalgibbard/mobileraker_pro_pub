import 'get_filament.dart';
import 'get_vendor.dart';
import 'extra_fields.dart';
export 'extra_fields.dart';
class UpdateSpool {
  const UpdateSpool({
    required this.id,
    this.firstUsed,
    this.lastUsed,
    this.filament,
    this.price,
    this.initialWeight,
    this.usedWeight,
    this.spoolWeight,
    this.threadUrl,
    this.location,
    this.lotNr,
    this.archived,
    this.comment,
    this.extra,
  });

  final int id;
  final DateTime? firstUsed;
  final DateTime? lastUsed;
  final GetFilament? filament;
  final double? price;
  final double? initialWeight;
  final double? usedWeight;
  final double? spoolWeight;
  final String? threadUrl;
  final String? location;
  final String? lotNr;
  final bool? archived;
  final String? comment;
  final ExtraFields? extra;
}
