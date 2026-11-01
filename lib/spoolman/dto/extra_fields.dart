import 'package:collection/collection.dart';

class ExtraField {
  const ExtraField(this.key, this.value);

  final String key;
  final Object? value;

  Map<String, dynamic> toJson() => {'key': key, 'value': value};

  static ExtraField fromJson(Map<String, dynamic> json) => ExtraField(json['key'] as String, json['value']);

  @override
  bool operator ==(Object other) => other is ExtraField && other.key == key && const DeepCollectionEquality().equals(other.value, value);

  @override
  int get hashCode => Object.hash(key, const DeepCollectionEquality().hash(value));
}

class ExtraFields {
  const ExtraFields([this.fields = const <ExtraField>[]]);

  ExtraFields.empty() : fields = const <ExtraField>[];

  final List<ExtraField> fields;

  bool get isEmpty => fields.isEmpty;
  bool get isNotEmpty => fields.isNotEmpty;

  Map<String, Object?> toMap() => {for (final f in fields) f.key: f.value};

  List<Map<String, dynamic>> toJson() => fields.map((e) => e.toJson()).toList();

  static ExtraFields fromJson(Object? json) {
    if (json == null) return ExtraFields.empty();
    if (json is Map) {
      return ExtraFields(json.entries.map((e) => ExtraField(e.key as String, e.value)).toList());
    }
    if (json is List) {
      return ExtraFields(json.map((e) => ExtraField.fromJson(Map<String, dynamic>.from(e as Map))).toList());
    }
    return ExtraFields.empty();
  }

  bool isSameAs(ExtraFields? other) => const DeepCollectionEquality().equals(fields, other?.fields);

  @override
  bool operator ==(Object other) => other is ExtraFields && const DeepCollectionEquality().equals(other.fields, fields);

  @override
  int get hashCode => const DeepCollectionEquality().hash(fields);
}

extension ExtractExtraFieldsExt on Map<String, dynamic> {
  ExtraFields extractExtraFields() {
    final raw = this['extra'];
    if (raw is Map) {
      return ExtraFields(raw.entries.map((e) => ExtraField(e.key as String, e.value)).toList());
    }
    final collected = entries
        .where((e) => e.key.startsWith('extra_') && e.value != null)
        .map((e) => ExtraField(e.key.substring('extra_'.length), e.value))
        .toList();
    return ExtraFields(collected);
  }
}
