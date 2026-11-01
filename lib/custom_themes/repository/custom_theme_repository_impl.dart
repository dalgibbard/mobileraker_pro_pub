import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive_ce/hive.dart';

import '../data/model/custom_theme_pack.dart';

final customThemeRepositoryProvider = Provider<CustomThemeRepositoryImpl>((ref) => CustomThemeRepositoryImpl());

/// Stub stand-in: theme packs are persisted as plain JSON maps in a Hive box.
class CustomThemeRepositoryImpl {
  static const _boxName = 'custom_theme_packs';

  Future<Box<dynamic>> _openBox() => Hive.openBox<dynamic>(_boxName);

  Future<List<CustomThemePack>> findAll() async {
    final box = await _openBox();
    return box.values
        .map((e) => CustomThemePack.fromJson(Map<String, dynamic>.from(e as Map)))
        .toList();
  }

  Future<CustomThemePack?> findById(String uuid) async {
    final box = await _openBox();
    final raw = box.get(uuid);
    if (raw == null) return null;
    return CustomThemePack.fromJson(Map<String, dynamic>.from(raw as Map));
  }

  Future<void> save(CustomThemePack pack) async {
    final box = await _openBox();
    await box.put(pack.uuid, pack.toJson());
  }

  Future<void> delete(CustomThemePack pack) async {
    final box = await _openBox();
    await box.delete(pack.uuid);
  }
}
