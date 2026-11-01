import 'package:flutter/foundation.dart';
import 'package:common/data/dto/pagination_result.dart';
import 'package:common/network/json_rpc_client.dart';
import 'package:common/util/logger.dart';

import '../dto/spool.dart';
import 'spool_repository.dart';

class GetSpoolRepositoryImpl with GetSpoolRepository {
  GetSpoolRepositoryImpl(JsonRpcClient jsonRpcClient, bool useV2Proxy);

  @override
  Future<GetSpool> create(GetSpool spool) {
    debugPrint('Creating spool: ${spool}');
    return Future.value(spool);
  }

  @override
  Future<GetSpool> delete(GetSpool spool) {
    debugPrint('Deleting spool: ${spool}');
    return Future.value(spool);
  }

  @override
  Future<PaginationResult<GetSpool>> paginated({int? pageSize, int? page, Map<String, dynamic>? filters}) {
    debugPrint('Fetching paginated spools');
    return Future.value(PaginationResult<GetSpool>(const <GetSpool>[], 0, 0, 0));
  }

  @override
  Future<GetSpool?> read(int id) {
    debugPrint('Reading spool with id: $id');
    return Future.value(null);
  }

  @override
  Future<GetSpool> update(GetSpool spool) {
    debugPrint('Updating spool: ${spool}');
    return Future.value(spool);
  }
}
