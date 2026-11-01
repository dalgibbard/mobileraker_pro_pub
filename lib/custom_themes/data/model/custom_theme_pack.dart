import 'package:hive_ce/hive.dart';

import 'custom_theme_config.dart';

class CustomThemePack {
  const CustomThemePack({
    required this.uuid,
    required this.name,
    required this.lightConfig,
    this.darkConfig,
    this.logoPath,
    this.logoDarkPath,
  });

  final String uuid;
  final String name;
  final CustomThemeConfig lightConfig;
  final CustomThemeConfig? darkConfig;
  final String? logoPath;
  final String? logoDarkPath;

  CustomThemePack copyWith({
    String? uuid,
    String? name,
    CustomThemeConfig? lightConfig,
    CustomThemeConfig? darkConfig,
    String? logoPath,
    String? logoDarkPath,
  }) {
    return CustomThemePack(
      uuid: uuid ?? this.uuid,
      name: name ?? this.name,
      lightConfig: lightConfig ?? this.lightConfig,
      darkConfig: darkConfig ?? this.darkConfig,
      logoPath: logoPath ?? this.logoPath,
      logoDarkPath: logoDarkPath ?? this.logoDarkPath,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'uuid': uuid,
      'name': name,
      'lightConfig': lightConfig.toJson(),
      'darkConfig': darkConfig?.toJson(),
      'logoPath': logoPath,
      'logoDarkPath': logoDarkPath,
    };
  }

  static CustomThemePack fromJson(Map<String, dynamic> json) {
    return CustomThemePack(
      uuid: json['uuid'] as String,
      name: json['name'] as String,
      lightConfig: CustomThemeConfig.fromJson(Map<String, dynamic>.from(json['lightConfig'] as Map)),
      darkConfig: json['darkConfig'] == null
          ? null
          : CustomThemeConfig.fromJson(Map<String, dynamic>.from(json['darkConfig'] as Map)),
      logoPath: json['logoPath'] as String?,
      logoDarkPath: json['logoDarkPath'] as String?,
    );
  }
}

/// Hand-written hive adapter (hive_ce_generator not run for this stand-in).
class CustomThemePackAdapter extends TypeAdapter<CustomThemePack> {
  CustomThemePackAdapter();

  @override
  int get typeId => 101;

  @override
  CustomThemePack read(BinaryReader reader) {
    return CustomThemePack.fromJson(Map<String, dynamic>.from(reader.read() as Map));
  }

  @override
  void write(BinaryWriter writer, CustomThemePack obj) {
    writer.write(obj.toJson());
  }
}
