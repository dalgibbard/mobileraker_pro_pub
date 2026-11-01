import 'package:common/data/dto/pagination_result.dart';

export 'package:common/data/dto/pagination_result.dart';

PaginationResult<T> spoolmanPagination<T>(List<T> items, int totalItems, int page, int pageSize) {
  return PaginationResult<T>(items, totalItems, page, pageSize);
}
