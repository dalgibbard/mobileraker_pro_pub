// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'custom_theme_service.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(customThemeService)
final customThemeServiceProvider = CustomThemeServiceProvider._();

final class CustomThemeServiceProvider extends $FunctionalProvider<
    CustomThemeService,
    CustomThemeService,
    CustomThemeService> with $Provider<CustomThemeService> {
  CustomThemeServiceProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'customThemeServiceProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$customThemeServiceHash();

  @$internal
  @override
  $ProviderElement<CustomThemeService> $createElement(
          $ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  CustomThemeService create(Ref ref) {
    return customThemeService(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(CustomThemeService value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<CustomThemeService>(value),
    );
  }
}

String _$customThemeServiceHash() =>
    r'25e8cfc41c3abbcba94ea44e20fdda0111f3cb53';

@ProviderFor(customThemePacks)
final customThemePacksProvider = CustomThemePacksProvider._();

final class CustomThemePacksProvider extends $FunctionalProvider<
        AsyncValue<List<CustomThemePack>>,
        List<CustomThemePack>,
        FutureOr<List<CustomThemePack>>>
    with
        $FutureModifier<List<CustomThemePack>>,
        $FutureProvider<List<CustomThemePack>> {
  CustomThemePacksProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'customThemePacksProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$customThemePacksHash();

  @$internal
  @override
  $FutureProviderElement<List<CustomThemePack>> $createElement(
          $ProviderPointer pointer) =>
      $FutureProviderElement(pointer);

  @override
  FutureOr<List<CustomThemePack>> create(Ref ref) {
    return customThemePacks(ref);
  }
}

String _$customThemePacksHash() => r'066ccfe1be349fd9b8619b6fa006306b36e14f0f';
