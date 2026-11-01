// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'spoolman_service.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(spoolmanService)
final spoolmanServiceProvider = SpoolmanServiceFamily._();

final class SpoolmanServiceProvider extends $FunctionalProvider<SpoolmanService,
    SpoolmanService, SpoolmanService> with $Provider<SpoolmanService> {
  SpoolmanServiceProvider._(
      {required SpoolmanServiceFamily super.from,
      required String super.argument})
      : super(
          retry: null,
          name: r'spoolmanServiceProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$spoolmanServiceHash();

  @override
  String toString() {
    return r'spoolmanServiceProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $ProviderElement<SpoolmanService> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  SpoolmanService create(Ref ref) {
    final argument = this.argument as String;
    return spoolmanService(
      ref,
      argument,
    );
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(SpoolmanService value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<SpoolmanService>(value),
    );
  }

  @override
  bool operator ==(Object other) {
    return other is SpoolmanServiceProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$spoolmanServiceHash() => r'df63d62c447feb95e24e9e43f22377117ad882fc';

final class SpoolmanServiceFamily extends $Family
    with $FunctionalFamilyOverride<SpoolmanService, String> {
  SpoolmanServiceFamily._()
      : super(
          retry: null,
          name: r'spoolmanServiceProvider',
          dependencies: null,
          $allTransitiveDependencies: null,
          isAutoDispose: true,
        );

  SpoolmanServiceProvider call(
    String machineUUID,
  ) =>
      SpoolmanServiceProvider._(argument: machineUUID, from: this);

  @override
  String toString() => r'spoolmanServiceProvider';
}

@ProviderFor(activeSpool)
final activeSpoolProvider = ActiveSpoolFamily._();

final class ActiveSpoolProvider extends $FunctionalProvider<
        AsyncValue<GetSpool?>, GetSpool?, Stream<GetSpool?>>
    with $FutureModifier<GetSpool?>, $StreamProvider<GetSpool?> {
  ActiveSpoolProvider._(
      {required ActiveSpoolFamily super.from, required String super.argument})
      : super(
          retry: null,
          name: r'activeSpoolProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$activeSpoolHash();

  @override
  String toString() {
    return r'activeSpoolProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $StreamProviderElement<GetSpool?> $createElement($ProviderPointer pointer) =>
      $StreamProviderElement(pointer);

  @override
  Stream<GetSpool?> create(Ref ref) {
    final argument = this.argument as String;
    return activeSpool(
      ref,
      argument,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is ActiveSpoolProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$activeSpoolHash() => r'e5d3bfc81386f97073103974bde24ecdb8944a6c';

final class ActiveSpoolFamily extends $Family
    with $FunctionalFamilyOverride<Stream<GetSpool?>, String> {
  ActiveSpoolFamily._()
      : super(
          retry: null,
          name: r'activeSpoolProvider',
          dependencies: null,
          $allTransitiveDependencies: null,
          isAutoDispose: true,
        );

  ActiveSpoolProvider call(
    String machineUUID,
  ) =>
      ActiveSpoolProvider._(argument: machineUUID, from: this);

  @override
  String toString() => r'activeSpoolProvider';
}

@ProviderFor(spoolmanServerInfo)
final spoolmanServerInfoProvider = SpoolmanServerInfoFamily._();

final class SpoolmanServerInfoProvider extends $FunctionalProvider<
        AsyncValue<SpoolmanServerInfo>,
        SpoolmanServerInfo,
        FutureOr<SpoolmanServerInfo>>
    with
        $FutureModifier<SpoolmanServerInfo>,
        $FutureProvider<SpoolmanServerInfo> {
  SpoolmanServerInfoProvider._(
      {required SpoolmanServerInfoFamily super.from,
      required String super.argument})
      : super(
          retry: null,
          name: r'spoolmanServerInfoProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$spoolmanServerInfoHash();

  @override
  String toString() {
    return r'spoolmanServerInfoProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $FutureProviderElement<SpoolmanServerInfo> $createElement(
          $ProviderPointer pointer) =>
      $FutureProviderElement(pointer);

  @override
  FutureOr<SpoolmanServerInfo> create(Ref ref) {
    final argument = this.argument as String;
    return spoolmanServerInfo(
      ref,
      argument,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is SpoolmanServerInfoProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$spoolmanServerInfoHash() =>
    r'2786b1e0c6b2e7b402749e9e7171c5e2a38cc948';

final class SpoolmanServerInfoFamily extends $Family
    with $FunctionalFamilyOverride<FutureOr<SpoolmanServerInfo>, String> {
  SpoolmanServerInfoFamily._()
      : super(
          retry: null,
          name: r'spoolmanServerInfoProvider',
          dependencies: null,
          $allTransitiveDependencies: null,
          isAutoDispose: true,
        );

  SpoolmanServerInfoProvider call(
    String machineUUID,
  ) =>
      SpoolmanServerInfoProvider._(argument: machineUUID, from: this);

  @override
  String toString() => r'spoolmanServerInfoProvider';
}

@ProviderFor(spoolList)
final spoolListProvider = SpoolListFamily._();

final class SpoolListProvider extends $FunctionalProvider<
        AsyncValue<PaginationResult<GetSpool>>,
        PaginationResult<GetSpool>,
        FutureOr<PaginationResult<GetSpool>>>
    with
        $FutureModifier<PaginationResult<GetSpool>>,
        $FutureProvider<PaginationResult<GetSpool>> {
  SpoolListProvider._(
      {required SpoolListFamily super.from,
      required (
        String, {
        int? page,
        int? pageSize,
        SpoolmanFilter? filters,
      })
          super.argument})
      : super(
          retry: null,
          name: r'spoolListProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$spoolListHash();

  @override
  String toString() {
    return r'spoolListProvider'
        ''
        '$argument';
  }

  @$internal
  @override
  $FutureProviderElement<PaginationResult<GetSpool>> $createElement(
          $ProviderPointer pointer) =>
      $FutureProviderElement(pointer);

  @override
  FutureOr<PaginationResult<GetSpool>> create(Ref ref) {
    final argument = this.argument as (
      String, {
      int? page,
      int? pageSize,
      SpoolmanFilter? filters,
    });
    return spoolList(
      ref,
      argument.$1,
      page: argument.page,
      pageSize: argument.pageSize,
      filters: argument.filters,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is SpoolListProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$spoolListHash() => r'f7e8a4993c90a9d39da5f2c58591e9f1424178e6';

final class SpoolListFamily extends $Family
    with
        $FunctionalFamilyOverride<
            FutureOr<PaginationResult<GetSpool>>,
            (
              String, {
              int? page,
              int? pageSize,
              SpoolmanFilter? filters,
            })> {
  SpoolListFamily._()
      : super(
          retry: null,
          name: r'spoolListProvider',
          dependencies: null,
          $allTransitiveDependencies: null,
          isAutoDispose: true,
        );

  SpoolListProvider call(
    String machineUUID, {
    int? page,
    int? pageSize,
    SpoolmanFilter? filters,
  }) =>
      SpoolListProvider._(argument: (
        machineUUID,
        page: page,
        pageSize: pageSize,
        filters: filters,
      ), from: this);

  @override
  String toString() => r'spoolListProvider';
}

@ProviderFor(filamentList)
final filamentListProvider = FilamentListFamily._();

final class FilamentListProvider extends $FunctionalProvider<
        AsyncValue<PaginationResult<GetFilament>>,
        PaginationResult<GetFilament>,
        FutureOr<PaginationResult<GetFilament>>>
    with
        $FutureModifier<PaginationResult<GetFilament>>,
        $FutureProvider<PaginationResult<GetFilament>> {
  FilamentListProvider._(
      {required FilamentListFamily super.from,
      required (
        String, {
        int? page,
        int? pageSize,
        SpoolmanFilter? filters,
      })
          super.argument})
      : super(
          retry: null,
          name: r'filamentListProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$filamentListHash();

  @override
  String toString() {
    return r'filamentListProvider'
        ''
        '$argument';
  }

  @$internal
  @override
  $FutureProviderElement<PaginationResult<GetFilament>> $createElement(
          $ProviderPointer pointer) =>
      $FutureProviderElement(pointer);

  @override
  FutureOr<PaginationResult<GetFilament>> create(Ref ref) {
    final argument = this.argument as (
      String, {
      int? page,
      int? pageSize,
      SpoolmanFilter? filters,
    });
    return filamentList(
      ref,
      argument.$1,
      page: argument.page,
      pageSize: argument.pageSize,
      filters: argument.filters,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is FilamentListProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$filamentListHash() => r'38700374defc904ae489707aa2df8e5877056b99';

final class FilamentListFamily extends $Family
    with
        $FunctionalFamilyOverride<
            FutureOr<PaginationResult<GetFilament>>,
            (
              String, {
              int? page,
              int? pageSize,
              SpoolmanFilter? filters,
            })> {
  FilamentListFamily._()
      : super(
          retry: null,
          name: r'filamentListProvider',
          dependencies: null,
          $allTransitiveDependencies: null,
          isAutoDispose: true,
        );

  FilamentListProvider call(
    String machineUUID, {
    int? page,
    int? pageSize,
    SpoolmanFilter? filters,
  }) =>
      FilamentListProvider._(argument: (
        machineUUID,
        page: page,
        pageSize: pageSize,
        filters: filters,
      ), from: this);

  @override
  String toString() => r'filamentListProvider';
}

@ProviderFor(vendorList)
final vendorListProvider = VendorListFamily._();

final class VendorListProvider extends $FunctionalProvider<
        AsyncValue<PaginationResult<GetVendor>>,
        PaginationResult<GetVendor>,
        FutureOr<PaginationResult<GetVendor>>>
    with
        $FutureModifier<PaginationResult<GetVendor>>,
        $FutureProvider<PaginationResult<GetVendor>> {
  VendorListProvider._(
      {required VendorListFamily super.from,
      required (
        String, {
        int? page,
        int? pageSize,
        SpoolmanFilter? filters,
      })
          super.argument})
      : super(
          retry: null,
          name: r'vendorListProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$vendorListHash();

  @override
  String toString() {
    return r'vendorListProvider'
        ''
        '$argument';
  }

  @$internal
  @override
  $FutureProviderElement<PaginationResult<GetVendor>> $createElement(
          $ProviderPointer pointer) =>
      $FutureProviderElement(pointer);

  @override
  FutureOr<PaginationResult<GetVendor>> create(Ref ref) {
    final argument = this.argument as (
      String, {
      int? page,
      int? pageSize,
      SpoolmanFilter? filters,
    });
    return vendorList(
      ref,
      argument.$1,
      page: argument.page,
      pageSize: argument.pageSize,
      filters: argument.filters,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is VendorListProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$vendorListHash() => r'3d3ba90f51860414507d91260bdf4fd462a431fa';

final class VendorListFamily extends $Family
    with
        $FunctionalFamilyOverride<
            FutureOr<PaginationResult<GetVendor>>,
            (
              String, {
              int? page,
              int? pageSize,
              SpoolmanFilter? filters,
            })> {
  VendorListFamily._()
      : super(
          retry: null,
          name: r'vendorListProvider',
          dependencies: null,
          $allTransitiveDependencies: null,
          isAutoDispose: true,
        );

  VendorListProvider call(
    String machineUUID, {
    int? page,
    int? pageSize,
    SpoolmanFilter? filters,
  }) =>
      VendorListProvider._(argument: (
        machineUUID,
        page: page,
        pageSize: pageSize,
        filters: filters,
      ), from: this);

  @override
  String toString() => r'vendorListProvider';
}

@ProviderFor(spool)
final spoolProvider = SpoolFamily._();

final class SpoolProvider extends $FunctionalProvider<AsyncValue<GetSpool?>,
        GetSpool?, FutureOr<GetSpool?>>
    with $FutureModifier<GetSpool?>, $FutureProvider<GetSpool?> {
  SpoolProvider._(
      {required SpoolFamily super.from,
      required (
        String,
        int,
      )
          super.argument})
      : super(
          retry: null,
          name: r'spoolProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$spoolHash();

  @override
  String toString() {
    return r'spoolProvider'
        ''
        '$argument';
  }

  @$internal
  @override
  $FutureProviderElement<GetSpool?> $createElement($ProviderPointer pointer) =>
      $FutureProviderElement(pointer);

  @override
  FutureOr<GetSpool?> create(Ref ref) {
    final argument = this.argument as (
      String,
      int,
    );
    return spool(
      ref,
      argument.$1,
      argument.$2,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is SpoolProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$spoolHash() => r'25cf8e2a4544fce787ea4ff5d0e66d72f554a38d';

final class SpoolFamily extends $Family
    with
        $FunctionalFamilyOverride<
            FutureOr<GetSpool?>,
            (
              String,
              int,
            )> {
  SpoolFamily._()
      : super(
          retry: null,
          name: r'spoolProvider',
          dependencies: null,
          $allTransitiveDependencies: null,
          isAutoDispose: true,
        );

  SpoolProvider call(
    String machineUUID,
    int id,
  ) =>
      SpoolProvider._(argument: (
        machineUUID,
        id,
      ), from: this);

  @override
  String toString() => r'spoolProvider';
}

@ProviderFor(filament)
final filamentProvider = FilamentFamily._();

final class FilamentProvider extends $FunctionalProvider<
        AsyncValue<GetFilament?>, GetFilament?, FutureOr<GetFilament?>>
    with $FutureModifier<GetFilament?>, $FutureProvider<GetFilament?> {
  FilamentProvider._(
      {required FilamentFamily super.from,
      required (
        String,
        int,
      )
          super.argument})
      : super(
          retry: null,
          name: r'filamentProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$filamentHash();

  @override
  String toString() {
    return r'filamentProvider'
        ''
        '$argument';
  }

  @$internal
  @override
  $FutureProviderElement<GetFilament?> $createElement(
          $ProviderPointer pointer) =>
      $FutureProviderElement(pointer);

  @override
  FutureOr<GetFilament?> create(Ref ref) {
    final argument = this.argument as (
      String,
      int,
    );
    return filament(
      ref,
      argument.$1,
      argument.$2,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is FilamentProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$filamentHash() => r'857d6e19e192b83ceb943f5d28bb0938b72fb1c2';

final class FilamentFamily extends $Family
    with
        $FunctionalFamilyOverride<
            FutureOr<GetFilament?>,
            (
              String,
              int,
            )> {
  FilamentFamily._()
      : super(
          retry: null,
          name: r'filamentProvider',
          dependencies: null,
          $allTransitiveDependencies: null,
          isAutoDispose: true,
        );

  FilamentProvider call(
    String machineUUID,
    int id,
  ) =>
      FilamentProvider._(argument: (
        machineUUID,
        id,
      ), from: this);

  @override
  String toString() => r'filamentProvider';
}

@ProviderFor(vendor)
final vendorProvider = VendorFamily._();

final class VendorProvider extends $FunctionalProvider<AsyncValue<GetVendor?>,
        GetVendor?, FutureOr<GetVendor?>>
    with $FutureModifier<GetVendor?>, $FutureProvider<GetVendor?> {
  VendorProvider._(
      {required VendorFamily super.from,
      required (
        String,
        int,
      )
          super.argument})
      : super(
          retry: null,
          name: r'vendorProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$vendorHash();

  @override
  String toString() {
    return r'vendorProvider'
        ''
        '$argument';
  }

  @$internal
  @override
  $FutureProviderElement<GetVendor?> $createElement($ProviderPointer pointer) =>
      $FutureProviderElement(pointer);

  @override
  FutureOr<GetVendor?> create(Ref ref) {
    final argument = this.argument as (
      String,
      int,
    );
    return vendor(
      ref,
      argument.$1,
      argument.$2,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is VendorProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$vendorHash() => r'df831696e71335d5982e876dfd17bb2b387f3dbe';

final class VendorFamily extends $Family
    with
        $FunctionalFamilyOverride<
            FutureOr<GetVendor?>,
            (
              String,
              int,
            )> {
  VendorFamily._()
      : super(
          retry: null,
          name: r'vendorProvider',
          dependencies: null,
          $allTransitiveDependencies: null,
          isAutoDispose: true,
        );

  VendorProvider call(
    String machineUUID,
    int id,
  ) =>
      VendorProvider._(argument: (
        machineUUID,
        id,
      ), from: this);

  @override
  String toString() => r'vendorProvider';
}

@ProviderFor(spoolmanCurrency)
final spoolmanCurrencyProvider = SpoolmanCurrencyFamily._();

final class SpoolmanCurrencyProvider
    extends $FunctionalProvider<String?, String?, String?>
    with $Provider<String?> {
  SpoolmanCurrencyProvider._(
      {required SpoolmanCurrencyFamily super.from,
      required String super.argument})
      : super(
          retry: null,
          name: r'spoolmanCurrencyProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$spoolmanCurrencyHash();

  @override
  String toString() {
    return r'spoolmanCurrencyProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $ProviderElement<String?> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  String? create(Ref ref) {
    final argument = this.argument as String;
    return spoolmanCurrency(
      ref,
      argument,
    );
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(String? value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<String?>(value),
    );
  }

  @override
  bool operator ==(Object other) {
    return other is SpoolmanCurrencyProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$spoolmanCurrencyHash() => r'f224fcb789fc203b8ffd8b3b723c5b0cb80831fa';

final class SpoolmanCurrencyFamily extends $Family
    with $FunctionalFamilyOverride<String?, String> {
  SpoolmanCurrencyFamily._()
      : super(
          retry: null,
          name: r'spoolmanCurrencyProvider',
          dependencies: null,
          $allTransitiveDependencies: null,
          isAutoDispose: true,
        );

  SpoolmanCurrencyProvider call(
    String machineUUID,
  ) =>
      SpoolmanCurrencyProvider._(argument: machineUUID, from: this);

  @override
  String toString() => r'spoolmanCurrencyProvider';
}

@ProviderFor(spoolmanExtraFields)
final spoolmanExtraFieldsProvider = SpoolmanExtraFieldsFamily._();

final class SpoolmanExtraFieldsProvider extends $FunctionalProvider<
        AsyncValue<ExtraFields>, ExtraFields, FutureOr<ExtraFields>>
    with $FutureModifier<ExtraFields>, $FutureProvider<ExtraFields> {
  SpoolmanExtraFieldsProvider._(
      {required SpoolmanExtraFieldsFamily super.from,
      required (
        String,
        SpoolmanEntityType,
      )
          super.argument})
      : super(
          retry: null,
          name: r'spoolmanExtraFieldsProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$spoolmanExtraFieldsHash();

  @override
  String toString() {
    return r'spoolmanExtraFieldsProvider'
        ''
        '$argument';
  }

  @$internal
  @override
  $FutureProviderElement<ExtraFields> $createElement(
          $ProviderPointer pointer) =>
      $FutureProviderElement(pointer);

  @override
  FutureOr<ExtraFields> create(Ref ref) {
    final argument = this.argument as (
      String,
      SpoolmanEntityType,
    );
    return spoolmanExtraFields(
      ref,
      argument.$1,
      argument.$2,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is SpoolmanExtraFieldsProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$spoolmanExtraFieldsHash() =>
    r'e82c36297b51ee4e005367a52ef3e6db8f6cf12a';

final class SpoolmanExtraFieldsFamily extends $Family
    with
        $FunctionalFamilyOverride<
            FutureOr<ExtraFields>,
            (
              String,
              SpoolmanEntityType,
            )> {
  SpoolmanExtraFieldsFamily._()
      : super(
          retry: null,
          name: r'spoolmanExtraFieldsProvider',
          dependencies: null,
          $allTransitiveDependencies: null,
          isAutoDispose: true,
        );

  SpoolmanExtraFieldsProvider call(
    String machineUUID,
    SpoolmanEntityType entityType,
  ) =>
      SpoolmanExtraFieldsProvider._(argument: (
        machineUUID,
        entityType,
      ), from: this);

  @override
  String toString() => r'spoolmanExtraFieldsProvider';
}
