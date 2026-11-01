import 'package:hive_ce/hive.dart';
import 'package:uuid/uuid.dart';

class GroupPreset {
  const GroupPreset({
    required this.uuid,
    required this.name,
    this.macroNames = const <String>[],
    this.machineUUIDs = const <String>[],
    this.extruderTemp = 0,
    this.bedTemp = 0,
    this.customGCode,
  });

  GroupPreset.create({required String name, List<String> macroNames = const <String>[], List<String> machineUUIDs = const <String>[]})
      : uuid = const Uuid().v4(),
        name = name,
        macroNames = macroNames,
        machineUUIDs = machineUUIDs,
        extruderTemp = 0,
        bedTemp = 0,
        customGCode = null;

  final String uuid;
  final String name;
  final List<String> macroNames;
  final List<String> machineUUIDs;
  final int extruderTemp;
  final int bedTemp;
  final String? customGCode;

  static const _unset = Object();

  GroupPreset copyWith({
    String? name,
    List<String>? macroNames,
    List<String>? machineUUIDs,
    int? extruderTemp,
    int? bedTemp,
    Object? customGCode = _unset,
  }) {
    return GroupPreset(
      uuid: uuid,
      name: name ?? this.name,
      macroNames: macroNames ?? this.macroNames,
      machineUUIDs: machineUUIDs ?? this.machineUUIDs,
      extruderTemp: extruderTemp ?? this.extruderTemp,
      bedTemp: bedTemp ?? this.bedTemp,
      customGCode: customGCode == _unset ? this.customGCode : customGCode as String?,
    );
  }

  Map<String, dynamic> toJson() => {
        'uuid': uuid,
        'name': name,
        'macroNames': macroNames,
        'machineUUIDs': machineUUIDs,
        'extruderTemp': extruderTemp,
        'bedTemp': bedTemp,
        'customGCode': customGCode,
      };

  static GroupPreset fromJson(Map<String, dynamic> json) => GroupPreset(
        uuid: json['uuid'] as String,
        name: json['name'] as String,
        macroNames: (json['macroNames'] as List?)?.map((e) => e as String).toList() ?? const <String>[],
        machineUUIDs: (json['machineUUIDs'] as List?)?.map((e) => e as String).toList() ?? const <String>[],
        extruderTemp: (json['extruderTemp'] as num?)?.toInt() ?? 0,
        bedTemp: (json['bedTemp'] as num?)?.toInt() ?? 0,
        customGCode: json['customGCode'] as String?,
      );
}

class PrinterGroup {
  bool get hasPresets => presets.isNotEmpty;
  const PrinterGroup({
    required this.uuid,
    required this.name,
    this.machineUUIDs = const <String>[],
    this.presets = const <GroupPreset>[],
  });

  PrinterGroup.create({required String name, required List<String> machineUUIDs, List<GroupPreset> presets = const <GroupPreset>[]})
      : uuid = const Uuid().v4(),
        name = name,
        machineUUIDs = machineUUIDs,
        presets = presets;

  final String uuid;
  final String name;
  final List<String> machineUUIDs;
  final List<GroupPreset> presets;

  PrinterGroup copyWith({
    String? name,
    List<String>? machineUUIDs,
    List<GroupPreset>? presets,
  }) {
    return PrinterGroup(
      uuid: uuid,
      name: name ?? this.name,
      machineUUIDs: machineUUIDs ?? this.machineUUIDs,
      presets: presets ?? this.presets,
    );
  }

  Map<String, dynamic> toJson() => {
        'uuid': uuid,
        'name': name,
        'machineUUIDs': machineUUIDs,
        'presets': presets.map((e) => e.toJson()).toList(),
      };

  static PrinterGroup fromJson(Map<String, dynamic> json) => PrinterGroup(
        uuid: json['uuid'] as String,
        name: json['name'] as String,
        machineUUIDs: (json['machineUUIDs'] as List?)?.map((e) => e as String).toList() ?? const <String>[],
        presets: (json['presets'] as List?)?.map((e) => GroupPreset.fromJson(Map<String, dynamic>.from(e as Map))).toList() ?? const <GroupPreset>[],
      );
}

/// Hand-written hive adapters (hive_ce_generator not run for this stand-in).
class GroupPresetAdapter extends TypeAdapter<GroupPreset> {
  GroupPresetAdapter();

  @override
  int get typeId => 103;

  @override
  GroupPreset read(BinaryReader reader) {
    return GroupPreset.fromJson(Map<String, dynamic>.from(reader.read() as Map));
  }

  @override
  void write(BinaryWriter writer, GroupPreset obj) {
    writer.write(obj.toJson());
  }
}

class PrinterGroupAdapter extends TypeAdapter<PrinterGroup> {
  PrinterGroupAdapter();

  @override
  int get typeId => 102;

  @override
  PrinterGroup read(BinaryReader reader) {
    return PrinterGroup.fromJson(Map<String, dynamic>.from(reader.read() as Map));
  }

  @override
  void write(BinaryWriter writer, PrinterGroup obj) {
    writer.write(obj.toJson());
  }
}
