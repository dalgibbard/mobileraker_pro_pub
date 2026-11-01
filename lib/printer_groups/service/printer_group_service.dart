import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive_ce/hive.dart';

import '../data/model/printer_group.dart';

/// Stub stand-in: groups are persisted as plain JSON maps in a Hive box.
class PrinterGroupService {
  static const _boxName = 'printer_groups';

  Future<Box<dynamic>> _openBox() => Hive.openBox<dynamic>(_boxName);

  Future<void> initialize() async {
    await _openBox();
  }

  Future<List<PrinterGroup>> findAll() async {
    final box = await _openBox();
    return box.values.map((e) => PrinterGroup.fromJson(Map<String, dynamic>.from(e as Map))).toList();
  }

  Future<void> save(PrinterGroup group) async {
    final box = await _openBox();
    await box.put(group.uuid, group.toJson());
  }

  Future<void> delete(PrinterGroup group) async {
    final box = await _openBox();
    await box.delete(group.uuid);
  }
}

final printerGroupServiceProvider = Provider<PrinterGroupService>((ref) => PrinterGroupService());

final printerGroupsProvider = FutureProvider<List<PrinterGroup>>((ref) async {
  return ref.read(printerGroupServiceProvider).findAll();
});
