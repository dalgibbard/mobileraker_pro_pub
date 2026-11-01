// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'spool_repository.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(spoolRepository)
final spoolRepositoryProvider = SpoolRepositoryFamily._();

final class SpoolRepositoryProvider extends $FunctionalProvider<
    GetSpoolRepository,
    GetSpoolRepository,
    GetSpoolRepository> with $Provider<GetSpoolRepository> {
  SpoolRepositoryProvider._(
      {required SpoolRepositoryFamily super.from,
      required String super.argument})
      : super(
          retry: null,
          name: r'spoolRepositoryProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$spoolRepositoryHash();

  @override
  String toString() {
    return r'spoolRepositoryProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $ProviderElement<GetSpoolRepository> $createElement(
          $ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  GetSpoolRepository create(Ref ref) {
    final argument = this.argument as String;
    return spoolRepository(
      ref,
      argument,
    );
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(GetSpoolRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<GetSpoolRepository>(value),
    );
  }

  @override
  bool operator ==(Object other) {
    return other is SpoolRepositoryProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$spoolRepositoryHash() => r'79ff94e79a21950fc43ba9659dd19d977eab9853';

final class SpoolRepositoryFamily extends $Family
    with $FunctionalFamilyOverride<GetSpoolRepository, String> {
  SpoolRepositoryFamily._()
      : super(
          retry: null,
          name: r'spoolRepositoryProvider',
          dependencies: null,
          $allTransitiveDependencies: null,
          isAutoDispose: true,
        );

  SpoolRepositoryProvider call(
    String machineUUID,
  ) =>
      SpoolRepositoryProvider._(argument: machineUUID, from: this);

  @override
  String toString() => r'spoolRepositoryProvider';
}
