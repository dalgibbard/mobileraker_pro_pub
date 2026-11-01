import 'package:common/ui/theme/theme_pack.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../data/model/custom_theme_config.dart';
import '../data/model/custom_theme_pack.dart';
import '../repository/custom_theme_repository_impl.dart';

part 'custom_theme_service.g.dart';

/// Stub stand-in for the private custom theme service.
class CustomThemeService {
  CustomThemeService(this._repository);

  final CustomThemeRepositoryImpl _repository;

  Future<List<CustomThemePack>> findAll() => _repository.findAll();

  Future<void> save(CustomThemePack pack) => _repository.save(pack);

  Future<void> delete(CustomThemePack pack) => _repository.delete(pack);
}

@riverpod
CustomThemeService customThemeService(Ref ref) {
  return CustomThemeService(CustomThemeRepositoryImpl());
}

@riverpod
Future<List<CustomThemePack>> customThemePacks(Ref ref) async {
  return ref.watch(customThemeServiceProvider).findAll();
}

ThemePack buildThemePack(CustomThemePack pack) {
  return ThemePack(
    name: pack.name,
    lightTheme: _themeFromConfig(pack.lightConfig, Brightness.light, pack.logoPath),
    darkTheme: _themeFromConfig(pack.darkConfig ?? pack.lightConfig, Brightness.dark, pack.logoDarkPath ?? pack.logoPath),
  );
}

ThemeData _themeFromConfig(CustomThemeConfig config, Brightness brightness, String? logoPath) {
  final seed = Color(config.primaryColor ?? 0xFF009688);
  final colorScheme = ColorScheme.fromSeed(
    seedColor: seed,
    brightness: brightness,
  );
  return ThemeData(
    useMaterial3: config.useMaterial3 ?? true,
    colorScheme: config.lightIsWhite == true
        ? const ColorScheme.light()
        : (config.darkIsTrueBlack == true
            ? ColorScheme.dark(primary: seed, surface: Colors.black)
            : colorScheme),
    fontFamily: config.fontFamily,
    appBarTheme: config.appBarColor != null
        ? AppBarTheme(backgroundColor: Color(config.appBarColor!), foregroundColor: config.appBarColor == 0xFF000000 ? Colors.white : null)
        : null,
  );
}

final customThemePacksAsThemePackProvider = Provider<List<ThemePack>>((ref) {
  final packs = ref.watch(customThemePacksProvider).value ?? const <CustomThemePack>[];
  return packs.map(buildThemePack).toList();
});
