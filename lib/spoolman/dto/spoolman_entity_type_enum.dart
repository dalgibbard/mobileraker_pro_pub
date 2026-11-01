enum SpoolmanEntityType {
  filament,
  spool,
  vendor;

  static SpoolmanEntityType fromName(String name) => values.firstWhere((e) => e.name == name, orElse: () => filament);
}
