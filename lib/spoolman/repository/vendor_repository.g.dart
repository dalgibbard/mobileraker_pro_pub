// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vendor_repository.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(vendorRepository)
final vendorRepositoryProvider = VendorRepositoryFamily._();

final class VendorRepositoryProvider extends $FunctionalProvider<
    GetVendorRepository,
    GetVendorRepository,
    GetVendorRepository> with $Provider<GetVendorRepository> {
  VendorRepositoryProvider._(
      {required VendorRepositoryFamily super.from,
      required String super.argument})
      : super(
          retry: null,
          name: r'vendorRepositoryProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$vendorRepositoryHash();

  @override
  String toString() {
    return r'vendorRepositoryProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $ProviderElement<GetVendorRepository> $createElement(
          $ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  GetVendorRepository create(Ref ref) {
    final argument = this.argument as String;
    return vendorRepository(
      ref,
      argument,
    );
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(GetVendorRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<GetVendorRepository>(value),
    );
  }

  @override
  bool operator ==(Object other) {
    return other is VendorRepositoryProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$vendorRepositoryHash() => r'5a62a782b0bef0fef44ba73308d20c7e52039b06';

final class VendorRepositoryFamily extends $Family
    with $FunctionalFamilyOverride<GetVendorRepository, String> {
  VendorRepositoryFamily._()
      : super(
          retry: null,
          name: r'vendorRepositoryProvider',
          dependencies: null,
          $allTransitiveDependencies: null,
          isAutoDispose: true,
        );

  VendorRepositoryProvider call(
    String machineUUID,
  ) =>
      VendorRepositoryProvider._(argument: machineUUID, from: this);

  @override
  String toString() => r'vendorRepositoryProvider';
}
