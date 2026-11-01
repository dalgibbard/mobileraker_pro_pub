import 'package:flutter/foundation.dart';
import 'package:common/data/dto/pagination_result.dart';
import 'package:common/network/jrpc_client_provider.dart';
import 'package:common/service/moonraker/klippy_service.dart';
import 'package:common/util/extensions/async_ext.dart';
import 'package:common/util/logger.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../dto/filament.dart';
import 'filament_repository_impl.dart';

part 'filament_repository.g.dart';

@riverpod
GetFilamentRepository filamentRepository(Ref ref, String machineUUID) {
  var jsonRpcClient = ref.watch(jrpcClientProvider(machineUUID));

  var moonrakerVersion = ref.watch(klipperProvider(machineUUID).selectAs((data) => data.moonrakerVersion)).value;
  var useV2 = (moonrakerVersion?.compareTo(0, 8, 0, 331) ?? -1) >= 0;

  debugPrint('Instantiating GetFilamentRepository with Moonraker-Response-Version: ${useV2 ? 'V2' : 'V1'}');

  return GetFilamentRepositoryImpl(jsonRpcClient, useV2);
}

abstract mixin class GetFilamentRepository {
  Future<GetFilament> create(GetFilament filament);

  Future<GetFilament?> read(int id);

  Future<GetFilament> update(GetFilament filament);

  Future<GetFilament> delete(GetFilament filament);

  Future<PaginationResult<GetFilament>> paginated({int? pageSize, int? page, Map<String, dynamic>? filters});
}
