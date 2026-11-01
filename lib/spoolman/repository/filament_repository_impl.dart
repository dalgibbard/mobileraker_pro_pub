import 'package:flutter/foundation.dart';
import 'package:common/data/dto/pagination_result.dart';
import 'package:common/network/json_rpc_client.dart';
import 'package:common/util/logger.dart';

import '../dto/filament.dart';
import 'filament_repository.dart';

class GetFilamentRepositoryImpl with GetFilamentRepository {
  GetFilamentRepositoryImpl(JsonRpcClient jsonRpcClient, bool useV2Proxy);

  @override
  Future<GetFilament> create(GetFilament filament) {
    debugPrint('Creating filament: ${filament}');
    return Future.value(filament);
  }

  @override
  Future<GetFilament> delete(GetFilament filament) {
    debugPrint('Deleting filament: ${filament}');
    return Future.value(filament);
  }

  @override
  Future<PaginationResult<GetFilament>> paginated({int? pageSize, int? page, Map<String, dynamic>? filters}) {
    debugPrint('Fetching paginated filaments');
    return Future.value(PaginationResult<GetFilament>(const <GetFilament>[], 0, 0, 0));
  }

  @override
  Future<GetFilament?> read(int id) {
    debugPrint('Reading filament with id: $id');
    return Future.value(null);
  }

  @override
  Future<GetFilament> update(GetFilament filament) {
    debugPrint('Updating filament: ${filament}');
    return Future.value(filament);
  }
}
