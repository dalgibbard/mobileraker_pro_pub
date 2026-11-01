// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'job_queue_service.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(jobQueueService)
final jobQueueServiceProvider = JobQueueServiceFamily._();

final class JobQueueServiceProvider extends $FunctionalProvider<JobQueueService,
    JobQueueService, JobQueueService> with $Provider<JobQueueService> {
  JobQueueServiceProvider._(
      {required JobQueueServiceFamily super.from,
      required String super.argument})
      : super(
          retry: null,
          name: r'jobQueueServiceProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$jobQueueServiceHash();

  @override
  String toString() {
    return r'jobQueueServiceProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $ProviderElement<JobQueueService> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  JobQueueService create(Ref ref) {
    final argument = this.argument as String;
    return jobQueueService(
      ref,
      argument,
    );
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(JobQueueService value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<JobQueueService>(value),
    );
  }

  @override
  bool operator ==(Object other) {
    return other is JobQueueServiceProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$jobQueueServiceHash() => r'ab610331e53c491f86db56cc837f559f99955d2a';

final class JobQueueServiceFamily extends $Family
    with $FunctionalFamilyOverride<JobQueueService, String> {
  JobQueueServiceFamily._()
      : super(
          retry: null,
          name: r'jobQueueServiceProvider',
          dependencies: null,
          $allTransitiveDependencies: null,
          isAutoDispose: true,
        );

  JobQueueServiceProvider call(
    String machineUUID,
  ) =>
      JobQueueServiceProvider._(argument: machineUUID, from: this);

  @override
  String toString() => r'jobQueueServiceProvider';
}

@ProviderFor(jobQueue)
final jobQueueProvider = JobQueueFamily._();

final class JobQueueProvider extends $FunctionalProvider<
        AsyncValue<JobQueueStatus>, JobQueueStatus, Stream<JobQueueStatus>>
    with $FutureModifier<JobQueueStatus>, $StreamProvider<JobQueueStatus> {
  JobQueueProvider._(
      {required JobQueueFamily super.from, required String super.argument})
      : super(
          retry: null,
          name: r'jobQueueProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$jobQueueHash();

  @override
  String toString() {
    return r'jobQueueProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $StreamProviderElement<JobQueueStatus> $createElement(
          $ProviderPointer pointer) =>
      $StreamProviderElement(pointer);

  @override
  Stream<JobQueueStatus> create(Ref ref) {
    final argument = this.argument as String;
    return jobQueue(
      ref,
      argument,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is JobQueueProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$jobQueueHash() => r'a8ca926bc8b5bda61d110644a53623ad489ea6e5';

final class JobQueueFamily extends $Family
    with $FunctionalFamilyOverride<Stream<JobQueueStatus>, String> {
  JobQueueFamily._()
      : super(
          retry: null,
          name: r'jobQueueProvider',
          dependencies: null,
          $allTransitiveDependencies: null,
          isAutoDispose: true,
        );

  JobQueueProvider call(
    String machineUUID,
  ) =>
      JobQueueProvider._(argument: machineUUID, from: this);

  @override
  String toString() => r'jobQueueProvider';
}

@ProviderFor(jobQueueServiceSelected)
final jobQueueServiceSelectedProvider = JobQueueServiceSelectedProvider._();

final class JobQueueServiceSelectedProvider extends $FunctionalProvider<
    JobQueueService,
    JobQueueService,
    JobQueueService> with $Provider<JobQueueService> {
  JobQueueServiceSelectedProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'jobQueueServiceSelectedProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$jobQueueServiceSelectedHash();

  @$internal
  @override
  $ProviderElement<JobQueueService> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  JobQueueService create(Ref ref) {
    return jobQueueServiceSelected(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(JobQueueService value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<JobQueueService>(value),
    );
  }
}

String _$jobQueueServiceSelectedHash() =>
    r'30599ce8ae086e5338bb34adfc1a1dd595e91eef';

@ProviderFor(jobQueueSelected)
final jobQueueSelectedProvider = JobQueueSelectedProvider._();

final class JobQueueSelectedProvider extends $FunctionalProvider<
        AsyncValue<JobQueueStatus>, JobQueueStatus, Stream<JobQueueStatus>>
    with $FutureModifier<JobQueueStatus>, $StreamProvider<JobQueueStatus> {
  JobQueueSelectedProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'jobQueueSelectedProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$jobQueueSelectedHash();

  @$internal
  @override
  $StreamProviderElement<JobQueueStatus> $createElement(
          $ProviderPointer pointer) =>
      $StreamProviderElement(pointer);

  @override
  Stream<JobQueueStatus> create(Ref ref) {
    return jobQueueSelected(ref);
  }
}

String _$jobQueueSelectedHash() => r'7351b3d068fe225a5160ffea218c85f72275e33a';
