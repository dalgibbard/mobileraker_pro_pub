/// Stub stand-in for the private Spoolman filter DTO.
class SpoolmanFilter {
  const SpoolmanFilter([this.filters = const <String, dynamic>{}]);

  static SpoolmanFilter empty() => const SpoolmanFilter();

  final Map<String, dynamic> filters;

  Map<String, dynamic> get map => filters;

  bool get isEmpty => filters.isEmpty;
}
