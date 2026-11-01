import 'package:flutter/foundation.dart';
import 'package:common/data/dto/pagination_result.dart';
import 'package:common/network/jrpc_client_provider.dart';
import 'package:common/service/moonraker/klippy_service.dart';
import 'package:common/util/extensions/async_ext.dart';
import 'package:common/util/logger.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../dto/vendor.dart';
import 'vendor_repository_impl.dart';

part 'vendor_repository.g.dart';

@riverpod
GetVendorRepository vendorRepository(Ref ref, String machineUUID) {
  var jsonRpcClient = ref.watch(jrpcClientProvider(machineUUID));

  var moonrakerVersion = ref.watch(klipperProvider(machineUUID).selectAs((data) => data.moonrakerVersion)).value;
  var useV2 = (moonrakerVersion?.compareTo(0, 8, 0, 331) ?? -1) >= 0;

  debugPrint('Instantiating GetVendorRepository with Moonraker-Response-Version: ${useV2 ? 'V2' : 'V1'}');

  return GetVendorRepositoryImpl(jsonRpcClient, useV2);
}

abstract mixin class GetVendorRepository {
  Future<GetVendor> create(GetVendor vendor);

  Future<GetVendor?> read(int id);

  Future<GetVendor> update(GetVendor vendor);

  Future<GetVendor> delete(GetVendor vendor);

  Future<PaginationResult<GetVendor>> paginated({int? pageSize, int? page, Map<String, dynamic>? filters});
}
