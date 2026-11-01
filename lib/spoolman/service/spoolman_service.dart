import 'dart:async';

import 'package:common/data/dto/pagination_result.dart';
import 'package:common/network/json_rpc_client.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../dto/create_filament.dart';
import '../dto/create_spool.dart';
import '../dto/create_vendor.dart';
import '../dto/extra_fields.dart';
import '../dto/get_filament.dart';
import '../dto/get_spool.dart';
import '../dto/get_vendor.dart';
import '../dto/spoolman_entity_type_enum.dart';
import '../dto/spoolman_filter.dart';
import '../dto/update_filament.dart';
import '../dto/update_spool.dart';
import '../dto/update_vendor.dart';
import '../spoolman_server_info.dart';

part 'spoolman_service.g.dart';

/// Stub stand-in for the private Spoolman service. All calls return benign empty
/// results so the app compiles and runs without a real Spoolman backend.
class SpoolmanService {
  SpoolmanService(this.machineUUID);

  final String machineUUID;

  final StreamController<GetSpool?> _activeSpoolStreamController = StreamController<GetSpool?>.broadcast();

  Stream<GetSpool?> get activeSpoolStream => _activeSpoolStreamController.stream;

  Future<PaginationResult<GetSpool>> spoolList({int? pageSize, int? page, SpoolmanFilter? filter}) async {
    return PaginationResult<GetSpool>(const <GetSpool>[], 0, page ?? 0, pageSize ?? 10);
  }

  Future<PaginationResult<GetFilament>> filamentList({int? pageSize, int? page, SpoolmanFilter? filter}) async {
    return PaginationResult<GetFilament>(const <GetFilament>[], 0, page ?? 0, pageSize ?? 10);
  }

  Future<PaginationResult<GetVendor>> vendorList({int? pageSize, int? page, SpoolmanFilter? filter}) async {
    return PaginationResult<GetVendor>(const <GetVendor>[], 0, page ?? 0, pageSize ?? 10);
  }

  Future<GetSpool?> getSpool(int id) async => null;

  Future<GetFilament?> getFilament(int id) async => null;

  Future<GetVendor?> getVendor(int id) async => null;

  Future<GetSpool> createSpool(CreateSpool dto) async => GetSpool(id: dto.id ?? 0, filament: dto.filament);

  Future<GetSpool> updateSpool(UpdateSpool dto) async => GetSpool(id: dto.id);

  Future<void> deleteSpool(GetSpool spool) async {}

  Future<void> deleteFilament(GetFilament filament) async {}

  Future<void> deleteVendor(GetVendor vendor) async {}

  Future<void> setActiveSpool(GetSpool spool) async {
    _activeSpoolStreamController.add(spool);
  }

  Future<void> clearActiveSpool() async {
    _activeSpoolStreamController.add(null);
  }

  Future<void> archiveSpool(GetSpool spool, [bool archived = true]) async {}

  Future<GetSpool> adjustFilamentOnSpool({required GetSpool spool, double? length, double? weight}) async {
    return spool;
  }

  Future<GetFilament> createFilament(CreateFilament dto) async => GetFilament(id: dto.id ?? 0);

  Future<GetFilament> updateFilament(UpdateFilament dto) async => GetFilament(id: dto.id);

  Future<GetVendor> createVendor(CreateVendor dto) async => GetVendor(id: dto.id ?? 0);

  Future<GetVendor> updateVendor(UpdateVendor dto) async => GetVendor(id: dto.id);

  Future<SpoolmanServerInfo> getServerInfo() async {
    return const SpoolmanServerInfo(
      version: '0.0.0',
      debugMode: false,
      automaticBackups: false,
      dataDir: '',
      logsDir: '',
      backupsDir: '',
      dbType: 'sqlite',
      gitCommit: 'stub',
    );
  }

  Future<ExtraFields> extraFields(SpoolmanEntityType entityType) async => ExtraFields.empty();

  Future<List<String>> allMaterials() async => const <String>[];

  Future<List<String>> allLocations() async => const <String>[];
}

@riverpod
SpoolmanService spoolmanService(Ref ref, String machineUUID) {
  return SpoolmanService(machineUUID);
}

@riverpod
Stream<GetSpool?> activeSpool(Ref ref, String machineUUID) async* {
  yield null;
  yield* ref.watch(spoolmanServiceProvider(machineUUID)).activeSpoolStream;
}

@riverpod
Future<SpoolmanServerInfo> spoolmanServerInfo(Ref ref, String machineUUID) async {
  return ref.watch(spoolmanServiceProvider(machineUUID)).getServerInfo();
}

@riverpod
Future<PaginationResult<GetSpool>> spoolList(
  Ref ref,
  String machineUUID, {
  int? page,
  int? pageSize,
  SpoolmanFilter? filters,
}) async {
  return ref.watch(spoolmanServiceProvider(machineUUID)).spoolList(page: page, pageSize: pageSize, filter: filters);
}

@riverpod
Future<PaginationResult<GetFilament>> filamentList(
  Ref ref,
  String machineUUID, {
  int? page,
  int? pageSize,
  SpoolmanFilter? filters,
}) async {
  return ref.watch(spoolmanServiceProvider(machineUUID)).filamentList(page: page, pageSize: pageSize, filter: filters);
}

@riverpod
Future<PaginationResult<GetVendor>> vendorList(
  Ref ref,
  String machineUUID, {
  int? page,
  int? pageSize,
  SpoolmanFilter? filters,
}) async {
  return ref.watch(spoolmanServiceProvider(machineUUID)).vendorList(page: page, pageSize: pageSize, filter: filters);
}

@riverpod
Future<GetSpool?> spool(Ref ref, String machineUUID, int id) async {
  return ref.watch(spoolmanServiceProvider(machineUUID)).getSpool(id);
}

@riverpod
Future<GetFilament?> filament(Ref ref, String machineUUID, int id) async {
  return ref.watch(spoolmanServiceProvider(machineUUID)).getFilament(id);
}

@riverpod
Future<GetVendor?> vendor(Ref ref, String machineUUID, int id) async {
  return ref.watch(spoolmanServiceProvider(machineUUID)).getVendor(id);
}

@riverpod
String? spoolmanCurrency(Ref ref, String machineUUID) {
  return 'EUR';
}

@riverpod
Future<ExtraFields> spoolmanExtraFields(Ref ref, String machineUUID, SpoolmanEntityType entityType) async {
  return ref.watch(spoolmanServiceProvider(machineUUID)).extraFields(entityType);
}
