import 'package:hive_ce/hive.dart';

class CustomThemeConfig {
  const CustomThemeConfig({
    this.primaryColor,
    this.secondaryColor,
    this.tertiaryColor,
    this.surfaceColor,
    this.onSurfaceColor,
    this.appBarColor,
    this.useMaterial3,
    this.fontFamily,
    this.blendLevel,
    this.surfaceModeIndex,
    this.appBarStyleIndex,
    this.usedColors,
    this.lightIsWhite,
    this.darkIsTrueBlack,
  });

  final int? primaryColor;
  final int? secondaryColor;
  final int? tertiaryColor;
  final int? surfaceColor;
  final int? onSurfaceColor;
  final int? appBarColor;
  final bool? useMaterial3;
  final String? fontFamily;
  final int? blendLevel;
  final int? surfaceModeIndex;
  final int? appBarStyleIndex;
  final int? usedColors;
  final bool? lightIsWhite;
  final bool? darkIsTrueBlack;

  CustomThemeConfig copyWith({
    int? primaryColor,
    int? secondaryColor,
    int? tertiaryColor,
    int? surfaceColor,
    int? onSurfaceColor,
    int? appBarColor,
    bool? useMaterial3,
    String? fontFamily,
    int? blendLevel,
    int? surfaceModeIndex,
    int? appBarStyleIndex,
    int? usedColors,
    bool? lightIsWhite,
    bool? darkIsTrueBlack,
  }) {
    return CustomThemeConfig(
      primaryColor: primaryColor ?? this.primaryColor,
      secondaryColor: secondaryColor ?? this.secondaryColor,
      tertiaryColor: tertiaryColor ?? this.tertiaryColor,
      surfaceColor: surfaceColor ?? this.surfaceColor,
      onSurfaceColor: onSurfaceColor ?? this.onSurfaceColor,
      appBarColor: appBarColor ?? this.appBarColor,
      useMaterial3: useMaterial3 ?? this.useMaterial3,
      fontFamily: fontFamily ?? this.fontFamily,
      blendLevel: blendLevel ?? this.blendLevel,
      surfaceModeIndex: surfaceModeIndex ?? this.surfaceModeIndex,
      appBarStyleIndex: appBarStyleIndex ?? this.appBarStyleIndex,
      usedColors: usedColors ?? this.usedColors,
      lightIsWhite: lightIsWhite ?? this.lightIsWhite,
      darkIsTrueBlack: darkIsTrueBlack ?? this.darkIsTrueBlack,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'primaryColor': primaryColor,
      'secondaryColor': secondaryColor,
      'tertiaryColor': tertiaryColor,
      'surfaceColor': surfaceColor,
      'onSurfaceColor': onSurfaceColor,
      'appBarColor': appBarColor,
      'useMaterial3': useMaterial3,
      'fontFamily': fontFamily,
      'blendLevel': blendLevel,
      'surfaceModeIndex': surfaceModeIndex,
      'appBarStyleIndex': appBarStyleIndex,
      'usedColors': usedColors,
      'lightIsWhite': lightIsWhite,
      'darkIsTrueBlack': darkIsTrueBlack,
    };
  }

  static CustomThemeConfig fromJson(Map<String, dynamic> json) {
    return CustomThemeConfig(
      primaryColor: (json['primaryColor'] as num?)?.toInt(),
      secondaryColor: (json['secondaryColor'] as num?)?.toInt(),
      tertiaryColor: (json['tertiaryColor'] as num?)?.toInt(),
      surfaceColor: (json['surfaceColor'] as num?)?.toInt(),
      onSurfaceColor: (json['onSurfaceColor'] as num?)?.toInt(),
      appBarColor: (json['appBarColor'] as num?)?.toInt(),
      useMaterial3: json['useMaterial3'] as bool?,
      fontFamily: json['fontFamily'] as String?,
      blendLevel: (json['blendLevel'] as num?)?.toInt(),
      surfaceModeIndex: (json['surfaceModeIndex'] as num?)?.toInt(),
      appBarStyleIndex: (json['appBarStyleIndex'] as num?)?.toInt(),
      usedColors: (json['usedColors'] as num?)?.toInt(),
      lightIsWhite: json['lightIsWhite'] as bool?,
      darkIsTrueBlack: json['darkIsTrueBlack'] as bool?,
    );
  }
}

/// Hand-written hive adapter (hive_ce_generator not run for this stand-in).
class CustomThemeConfigAdapter extends TypeAdapter<CustomThemeConfig> {
  CustomThemeConfigAdapter();

  @override
  int get typeId => 100;

  @override
  CustomThemeConfig read(BinaryReader reader) {
    return CustomThemeConfig.fromJson(Map<String, dynamic>.from(reader.read() as Map));
  }

  @override
  void write(BinaryWriter writer, CustomThemeConfig obj) {
    writer.write(obj.toJson());
  }
}
