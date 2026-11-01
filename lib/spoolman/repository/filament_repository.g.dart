// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'filament_repository.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(filamentRepository)
final filamentRepositoryProvider = FilamentRepositoryFamily._();

final class FilamentRepositoryProvider extends $FunctionalProvider<
    GetFilamentRepository,
    GetFilamentRepository,
    GetFilamentRepository> with $Provider<GetFilamentRepository> {
  FilamentRepositoryProvider._(
      {required FilamentRepositoryFamily super.from,
      required String super.argument})
      : super(
          retry: null,
          name: r'filamentRepositoryProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$filamentRepositoryHash();

  @override
  String toString() {
    return r'filamentRepositoryProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $ProviderElement<GetFilamentRepository> $createElement(
          $ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  GetFilamentRepository create(Ref ref) {
    final argument = this.argument as String;
    return filamentRepository(
      ref,
      argument,
    );
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(GetFilamentRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<GetFilamentRepository>(value),
    );
  }

  @override
  bool operator ==(Object other) {
    return other is FilamentRepositoryProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$filamentRepositoryHash() =>
    r'9454f7abb919a3b1708f9736a609fb452a5d4d65';

final class FilamentRepositoryFamily extends $Family
    with $FunctionalFamilyOverride<GetFilamentRepository, String> {
  FilamentRepositoryFamily._()
      : super(
          retry: null,
          name: r'filamentRepositoryProvider',
          dependencies: null,
          $allTransitiveDependencies: null,
          isAutoDispose: true,
        );

  FilamentRepositoryProvider call(
    String machineUUID,
  ) =>
      FilamentRepositoryProvider._(argument: machineUUID, from: this);

  @override
  String toString() => r'filamentRepositoryProvider';
}
