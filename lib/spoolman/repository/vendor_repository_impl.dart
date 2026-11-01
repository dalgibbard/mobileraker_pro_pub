import 'package:flutter/foundation.dart';
import 'package:common/data/dto/pagination_result.dart';
import 'package:common/network/json_rpc_client.dart';
import 'package:common/util/logger.dart';

import '../dto/vendor.dart';
import 'vendor_repository.dart';

class GetVendorRepositoryImpl with GetVendorRepository {
  GetVendorRepositoryImpl(JsonRpcClient jsonRpcClient, bool useV2Proxy);

  @override
  Future<GetVendor> create(GetVendor vendor) {
    debugPrint('Creating vendor: ${vendor}');
    return Future.value(vendor);
  }

  @override
  Future<GetVendor> delete(GetVendor vendor) {
    debugPrint('Deleting vendor: ${vendor}');
    return Future.value(vendor);
  }

  @override
  Future<PaginationResult<GetVendor>> paginated({int? pageSize, int? page, Map<String, dynamic>? filters}) {
    debugPrint('Fetching paginated vendors');
    return Future.value(PaginationResult<GetVendor>(const <GetVendor>[], 0, 0, 0));
  }

  @override
  Future<GetVendor?> read(int id) {
    debugPrint('Reading vendor with id: $id');
    return Future.value(null);
  }

  @override
  Future<GetVendor> update(GetVendor vendor) {
    debugPrint('Updating vendor: ${vendor}');
    return Future.value(vendor);
  }
}
