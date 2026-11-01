/*
 * Copyright (c) 2024. Patrick Schmidt.
 * All rights reserved.
 */

import 'package:common/data/model/hive/dashboard_component.dart';
import 'package:common/data/model/hive/dashboard_component_type.dart';
import 'package:common/data/model/hive/dashboard_layout.dart';
import 'package:common/data/model/hive/dashboard_tab.dart';
import 'package:common/data/model/hive/machine.dart';
import 'package:logger/logger.dart';
import 'package:uuid/uuid.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'dashboard_layout_service.g.dart';

@riverpod
Future<DashboardLayout> dashboardLayout(Ref ref, String machineUUID) async {
  return ref.watch(dashboardLayoutServiceProvider).defaultDashboardLayout();
}

@riverpod
Future<DashboardLayout> dashboardLayoutForMachine(Ref ref, String machineUUID) async {
  return ref.watch(dashboardLayoutServiceProvider).defaultDashboardLayout();
}

@riverpod
DashboardLayoutService dashboardLayoutService(Ref ref) {
  ref.keepAlive();
  return DashboardLayoutService(ref);
}

class DashboardLayoutService {
  final Logger logger = Logger();

  DashboardLayoutService(Ref ref) {
    ref.onDispose(dispose);
  }

  /// Returns the default dashboard layout. Defined by me
  DashboardLayout defaultDashboardLayout() {
    return DashboardLayout(uuid: const Uuid().v4(), name: 'Default', tabs: [
      DashboardTab(uuid: const Uuid().v4(), name: 'General', icon: 'nozzle', components: [
        DashboardComponent(uuid: const Uuid().v4(), type: DashboardComponentType.machineStatus),
        DashboardComponent(uuid: const Uuid().v4(), type: DashboardComponentType.temperatureSensorPreset),
        DashboardComponent(uuid: const Uuid().v4(), type: DashboardComponentType.webcam),
        DashboardComponent(uuid: const Uuid().v4(), type: DashboardComponentType.controlXYZ),
        DashboardComponent(uuid: const Uuid().v4(), type: DashboardComponentType.zOffset),
        DashboardComponent(uuid: const Uuid().v4(), type: DashboardComponentType.spoolman),
      ]),
      DashboardTab(uuid: const Uuid().v4(), name: 'Control', icon: 'sliders', components: [
        DashboardComponent(uuid: const Uuid().v4(), type: DashboardComponentType.macroGroup),
        DashboardComponent(uuid: const Uuid().v4(), type: DashboardComponentType.controlExtruder),
        DashboardComponent(uuid: const Uuid().v4(), type: DashboardComponentType.fans),
        DashboardComponent(uuid: const Uuid().v4(), type: DashboardComponentType.pins),
        DashboardComponent(uuid: const Uuid().v4(), type: DashboardComponentType.powerApi),
        DashboardComponent(uuid: const Uuid().v4(), type: DashboardComponentType.groupedSliders),
        DashboardComponent(uuid: const Uuid().v4(), type: DashboardComponentType.bedMesh),
      ]),
    ]);
  }

  /// Returns an empty dashboard layout with one empty tab
  DashboardLayout emptyDashboardLayout() {
    return DashboardLayout(uuid: const Uuid().v4(), name: 'Empty', tabs: [
      emptyDashboardTab('nozzle'),
      emptyDashboardTab('sliders'),
    ]);
  }

  /// Returns an empty dashboard tab
  DashboardTab emptyDashboardTab([String icon = 'nozzle']) {
    return DashboardTab(uuid: const Uuid().v4(), name: 'Empty', icon: icon, components: []);
  }

  DashboardLayout importFromJson(Map<String, dynamic> json) {
    // THIS IS NOT HOW ITS ACTUALLY IMPLEMENTED
    return defaultDashboardLayout();
  }

  Future<DashboardLayout> fetchDashboardLayoutForMachine(Machine machine) async {
    // THIS IS NOT HOW ITS ACTUALLY IMPLEMENTED
    return defaultDashboardLayout();
  }

  Future<void> saveDashboardLayoutForMachine(String machineUUID, DashboardLayout layout) async {
    // THIS IS NOT HOW ITS ACTUALLY IMPLEMENTED
  }

  Future<List<DashboardLayout>> availableLayouts() async {
    // THIS IS NOT HOW ITS ACTUALLY IMPLEMENTED
    return <DashboardLayout>[];
  }

  Future<void> persistLayout(DashboardLayout layout) async {
    // THIS IS NOT HOW ITS ACTUALLY IMPLEMENTED
    logger.i('Persisting dashboard layout ${layout.name} (${layout.uuid})');
  }

  Future<void> removeLayout(DashboardLayout layout) async {
    // THIS IS NOT HOW ITS ACTUALLY IMPLEMENTED
    logger.i('Removing dashboard layout ${layout.name} (${layout.uuid})');
  }

  bool validateLayout(DashboardLayout layout, [bool throwIfError = false]) {
    // THIS IS NOT HOW ITS ACTUALLY IMPLEMENTED
    return true;
  }

  void dispose() {
    logger.i('DashboardLayoutService disposed');
  }
}
