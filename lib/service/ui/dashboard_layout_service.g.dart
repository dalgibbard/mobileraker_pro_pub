// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dashboard_layout_service.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(dashboardLayout)
final dashboardLayoutProvider = DashboardLayoutFamily._();

final class DashboardLayoutProvider extends $FunctionalProvider<
        AsyncValue<DashboardLayout>, DashboardLayout, FutureOr<DashboardLayout>>
    with $FutureModifier<DashboardLayout>, $FutureProvider<DashboardLayout> {
  DashboardLayoutProvider._(
      {required DashboardLayoutFamily super.from,
      required String super.argument})
      : super(
          retry: null,
          name: r'dashboardLayoutProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$dashboardLayoutHash();

  @override
  String toString() {
    return r'dashboardLayoutProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $FutureProviderElement<DashboardLayout> $createElement(
          $ProviderPointer pointer) =>
      $FutureProviderElement(pointer);

  @override
  FutureOr<DashboardLayout> create(Ref ref) {
    final argument = this.argument as String;
    return dashboardLayout(
      ref,
      argument,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is DashboardLayoutProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$dashboardLayoutHash() => r'047be647d3b4ff329a1ced6c3c2ff5d35e867d53';

final class DashboardLayoutFamily extends $Family
    with $FunctionalFamilyOverride<FutureOr<DashboardLayout>, String> {
  DashboardLayoutFamily._()
      : super(
          retry: null,
          name: r'dashboardLayoutProvider',
          dependencies: null,
          $allTransitiveDependencies: null,
          isAutoDispose: true,
        );

  DashboardLayoutProvider call(
    String machineUUID,
  ) =>
      DashboardLayoutProvider._(argument: machineUUID, from: this);

  @override
  String toString() => r'dashboardLayoutProvider';
}

@ProviderFor(dashboardLayoutForMachine)
final dashboardLayoutForMachineProvider = DashboardLayoutForMachineFamily._();

final class DashboardLayoutForMachineProvider extends $FunctionalProvider<
        AsyncValue<DashboardLayout>, DashboardLayout, FutureOr<DashboardLayout>>
    with $FutureModifier<DashboardLayout>, $FutureProvider<DashboardLayout> {
  DashboardLayoutForMachineProvider._(
      {required DashboardLayoutForMachineFamily super.from,
      required String super.argument})
      : super(
          retry: null,
          name: r'dashboardLayoutForMachineProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$dashboardLayoutForMachineHash();

  @override
  String toString() {
    return r'dashboardLayoutForMachineProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $FutureProviderElement<DashboardLayout> $createElement(
          $ProviderPointer pointer) =>
      $FutureProviderElement(pointer);

  @override
  FutureOr<DashboardLayout> create(Ref ref) {
    final argument = this.argument as String;
    return dashboardLayoutForMachine(
      ref,
      argument,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is DashboardLayoutForMachineProvider &&
        other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$dashboardLayoutForMachineHash() =>
    r'e54a1812cc065b9d49e79b8cac59530e7593be19';

final class DashboardLayoutForMachineFamily extends $Family
    with $FunctionalFamilyOverride<FutureOr<DashboardLayout>, String> {
  DashboardLayoutForMachineFamily._()
      : super(
          retry: null,
          name: r'dashboardLayoutForMachineProvider',
          dependencies: null,
          $allTransitiveDependencies: null,
          isAutoDispose: true,
        );

  DashboardLayoutForMachineProvider call(
    String machineUUID,
  ) =>
      DashboardLayoutForMachineProvider._(argument: machineUUID, from: this);

  @override
  String toString() => r'dashboardLayoutForMachineProvider';
}

@ProviderFor(dashboardLayoutService)
final dashboardLayoutServiceProvider = DashboardLayoutServiceProvider._();

final class DashboardLayoutServiceProvider extends $FunctionalProvider<
    DashboardLayoutService,
    DashboardLayoutService,
    DashboardLayoutService> with $Provider<DashboardLayoutService> {
  DashboardLayoutServiceProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'dashboardLayoutServiceProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$dashboardLayoutServiceHash();

  @$internal
  @override
  $ProviderElement<DashboardLayoutService> $createElement(
          $ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  DashboardLayoutService create(Ref ref) {
    return dashboardLayoutService(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(DashboardLayoutService value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<DashboardLayoutService>(value),
    );
  }
}

String _$dashboardLayoutServiceHash() =>
    r'20ff95c7cb4c09d5024382fdf0a388f60b5dbf21';
