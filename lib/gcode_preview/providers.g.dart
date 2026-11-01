// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// Stub stand-in: gcode parsing is disabled, so this always yields an empty structure.

@ProviderFor(gcodeStructure)
final gcodeStructureProvider = GcodeStructureFamily._();

/// Stub stand-in: gcode parsing is disabled, so this always yields an empty structure.

final class GcodeStructureProvider extends $FunctionalProvider<
        AsyncValue<GCodeStructure>, GCodeStructure, FutureOr<GCodeStructure>>
    with $FutureModifier<GCodeStructure>, $FutureProvider<GCodeStructure> {
  /// Stub stand-in: gcode parsing is disabled, so this always yields an empty structure.
  GcodeStructureProvider._(
      {required GcodeStructureFamily super.from,
      required (
        String,
        GCodeFile,
      )
          super.argument})
      : super(
          retry: null,
          name: r'gcodeStructureProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$gcodeStructureHash();

  @override
  String toString() {
    return r'gcodeStructureProvider'
        ''
        '$argument';
  }

  @$internal
  @override
  $FutureProviderElement<GCodeStructure> $createElement(
          $ProviderPointer pointer) =>
      $FutureProviderElement(pointer);

  @override
  FutureOr<GCodeStructure> create(Ref ref) {
    final argument = this.argument as (
      String,
      GCodeFile,
    );
    return gcodeStructure(
      ref,
      argument.$1,
      argument.$2,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is GcodeStructureProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$gcodeStructureHash() => r'c74b4d49cffdd86a02bc6d756ceff622e14eeeeb';

/// Stub stand-in: gcode parsing is disabled, so this always yields an empty structure.

final class GcodeStructureFamily extends $Family
    with
        $FunctionalFamilyOverride<
            FutureOr<GCodeStructure>,
            (
              String,
              GCodeFile,
            )> {
  GcodeStructureFamily._()
      : super(
          retry: null,
          name: r'gcodeStructureProvider',
          dependencies: null,
          $allTransitiveDependencies: null,
          isAutoDispose: true,
        );

  /// Stub stand-in: gcode parsing is disabled, so this always yields an empty structure.

  GcodeStructureProvider call(
    String machineUUID,
    GCodeFile file,
  ) =>
      GcodeStructureProvider._(argument: (
        machineUUID,
        file,
      ), from: this);

  @override
  String toString() => r'gcodeStructureProvider';
}
