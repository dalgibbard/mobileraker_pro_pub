import 'package:flutter/foundation.dart';
import 'package:common/data/dto/pagination_result.dart';
import 'package:common/network/jrpc_client_provider.dart';
import 'package:common/service/moonraker/klippy_service.dart';
import 'package:common/util/extensions/async_ext.dart';
import 'package:common/util/logger.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../dto/spool.dart';
import 'spool_repository_impl.dart';

part 'spool_repository.g.dart';

@riverpod
GetSpoolRepository spoolRepository(Ref ref, String machineUUID) {
  var jsonRpcClient = ref.watch(jrpcClientProvider(machineUUID));

  var moonrakerVersion = ref.watch(klipperProvider(machineUUID).selectAs((data) => data.moonrakerVersion)).value;
  var useV2 = (moonrakerVersion?.compareTo(0, 8, 0, 331) ?? -1) >= 0;

  debugPrint('Instantiating GetSpoolRepository with Moonraker-Response-Version: ${useV2 ? 'V2' : 'V1'}');

  return GetSpoolRepositoryImpl(jsonRpcClient, useV2);
}

abstract mixin class GetSpoolRepository {
  Future<GetSpool> create(GetSpool spool);

  Future<GetSpool?> read(int id);

  Future<GetSpool> update(GetSpool spool);

  Future<GetSpool> delete(GetSpool spool);

  Future<PaginationResult<GetSpool>> paginated({int? pageSize, int? page, Map<String, dynamic>? filters});
}
