// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'spoolman_server_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SpoolmanServerInfo {
  String get version;
  bool get debugMode;
  bool get automaticBackups;
  String get dataDir;
  String get logsDir;
  String get backupsDir;
  String get dbType;
  String get gitCommit;
  String? get buildDate;

  /// Create a copy of SpoolmanServerInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SpoolmanServerInfoCopyWith<SpoolmanServerInfo> get copyWith =>
      _$SpoolmanServerInfoCopyWithImpl<SpoolmanServerInfo>(
          this as SpoolmanServerInfo, _$identity);

  /// Serializes this SpoolmanServerInfo to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SpoolmanServerInfo &&
            (identical(other.version, version) || other.version == version) &&
            (identical(other.debugMode, debugMode) ||
                other.debugMode == debugMode) &&
            (identical(other.automaticBackups, automaticBackups) ||
                other.automaticBackups == automaticBackups) &&
            (identical(other.dataDir, dataDir) || other.dataDir == dataDir) &&
            (identical(other.logsDir, logsDir) || other.logsDir == logsDir) &&
            (identical(other.backupsDir, backupsDir) ||
                other.backupsDir == backupsDir) &&
            (identical(other.dbType, dbType) || other.dbType == dbType) &&
            (identical(other.gitCommit, gitCommit) ||
                other.gitCommit == gitCommit) &&
            (identical(other.buildDate, buildDate) ||
                other.buildDate == buildDate));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      version,
      debugMode,
      automaticBackups,
      dataDir,
      logsDir,
      backupsDir,
      dbType,
      gitCommit,
      buildDate);

  @override
  String toString() {
    return 'SpoolmanServerInfo(version: $version, debugMode: $debugMode, automaticBackups: $automaticBackups, dataDir: $dataDir, logsDir: $logsDir, backupsDir: $backupsDir, dbType: $dbType, gitCommit: $gitCommit, buildDate: $buildDate)';
  }
}

/// @nodoc
abstract mixin class $SpoolmanServerInfoCopyWith<$Res> {
  factory $SpoolmanServerInfoCopyWith(
          SpoolmanServerInfo value, $Res Function(SpoolmanServerInfo) _then) =
      _$SpoolmanServerInfoCopyWithImpl;
  @useResult
  $Res call(
      {String version,
      bool debugMode,
      bool automaticBackups,
      String dataDir,
      String logsDir,
      String backupsDir,
      String dbType,
      String gitCommit,
      String? buildDate});
}

/// @nodoc
class _$SpoolmanServerInfoCopyWithImpl<$Res>
    implements $SpoolmanServerInfoCopyWith<$Res> {
  _$SpoolmanServerInfoCopyWithImpl(this._self, this._then);

  final SpoolmanServerInfo _self;
  final $Res Function(SpoolmanServerInfo) _then;

  /// Create a copy of SpoolmanServerInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? version = null,
    Object? debugMode = null,
    Object? automaticBackups = null,
    Object? dataDir = null,
    Object? logsDir = null,
    Object? backupsDir = null,
    Object? dbType = null,
    Object? gitCommit = null,
    Object? buildDate = freezed,
  }) {
    return _then(_self.copyWith(
      version: null == version
          ? _self.version
          : version // ignore: cast_nullable_to_non_nullable
              as String,
      debugMode: null == debugMode
          ? _self.debugMode
          : debugMode // ignore: cast_nullable_to_non_nullable
              as bool,
      automaticBackups: null == automaticBackups
          ? _self.automaticBackups
          : automaticBackups // ignore: cast_nullable_to_non_nullable
              as bool,
      dataDir: null == dataDir
          ? _self.dataDir
          : dataDir // ignore: cast_nullable_to_non_nullable
              as String,
      logsDir: null == logsDir
          ? _self.logsDir
          : logsDir // ignore: cast_nullable_to_non_nullable
              as String,
      backupsDir: null == backupsDir
          ? _self.backupsDir
          : backupsDir // ignore: cast_nullable_to_non_nullable
              as String,
      dbType: null == dbType
          ? _self.dbType
          : dbType // ignore: cast_nullable_to_non_nullable
              as String,
      gitCommit: null == gitCommit
          ? _self.gitCommit
          : gitCommit // ignore: cast_nullable_to_non_nullable
              as String,
      buildDate: freezed == buildDate
          ? _self.buildDate
          : buildDate // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// Adds pattern-matching-related methods to [SpoolmanServerInfo].
extension SpoolmanServerInfoPatterns on SpoolmanServerInfo {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_SpoolmanServerInfo value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SpoolmanServerInfo() when $default != null:
        return $default(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_SpoolmanServerInfo value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SpoolmanServerInfo():
        return $default(_that);
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_SpoolmanServerInfo value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SpoolmanServerInfo() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            String version,
            bool debugMode,
            bool automaticBackups,
            String dataDir,
            String logsDir,
            String backupsDir,
            String dbType,
            String gitCommit,
            String? buildDate)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SpoolmanServerInfo() when $default != null:
        return $default(
            _that.version,
            _that.debugMode,
            _that.automaticBackups,
            _that.dataDir,
            _that.logsDir,
            _that.backupsDir,
            _that.dbType,
            _that.gitCommit,
            _that.buildDate);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            String version,
            bool debugMode,
            bool automaticBackups,
            String dataDir,
            String logsDir,
            String backupsDir,
            String dbType,
            String gitCommit,
            String? buildDate)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SpoolmanServerInfo():
        return $default(
            _that.version,
            _that.debugMode,
            _that.automaticBackups,
            _that.dataDir,
            _that.logsDir,
            _that.backupsDir,
            _that.dbType,
            _that.gitCommit,
            _that.buildDate);
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            String version,
            bool debugMode,
            bool automaticBackups,
            String dataDir,
            String logsDir,
            String backupsDir,
            String dbType,
            String gitCommit,
            String? buildDate)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SpoolmanServerInfo() when $default != null:
        return $default(
            _that.version,
            _that.debugMode,
            _that.automaticBackups,
            _that.dataDir,
            _that.logsDir,
            _that.backupsDir,
            _that.dbType,
            _that.gitCommit,
            _that.buildDate);
      case _:
        return null;
    }
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _SpoolmanServerInfo extends SpoolmanServerInfo {
  const _SpoolmanServerInfo(
      {required this.version,
      required this.debugMode,
      required this.automaticBackups,
      required this.dataDir,
      required this.logsDir,
      required this.backupsDir,
      required this.dbType,
      required this.gitCommit,
      this.buildDate})
      : super._();
  factory _SpoolmanServerInfo.fromJson(Map<String, dynamic> json) =>
      _$SpoolmanServerInfoFromJson(json);

  @override
  final String version;
  @override
  final bool debugMode;
  @override
  final bool automaticBackups;
  @override
  final String dataDir;
  @override
  final String logsDir;
  @override
  final String backupsDir;
  @override
  final String dbType;
  @override
  final String gitCommit;
  @override
  final String? buildDate;

  /// Create a copy of SpoolmanServerInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SpoolmanServerInfoCopyWith<_SpoolmanServerInfo> get copyWith =>
      __$SpoolmanServerInfoCopyWithImpl<_SpoolmanServerInfo>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$SpoolmanServerInfoToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SpoolmanServerInfo &&
            (identical(other.version, version) || other.version == version) &&
            (identical(other.debugMode, debugMode) ||
                other.debugMode == debugMode) &&
            (identical(other.automaticBackups, automaticBackups) ||
                other.automaticBackups == automaticBackups) &&
            (identical(other.dataDir, dataDir) || other.dataDir == dataDir) &&
            (identical(other.logsDir, logsDir) || other.logsDir == logsDir) &&
            (identical(other.backupsDir, backupsDir) ||
                other.backupsDir == backupsDir) &&
            (identical(other.dbType, dbType) || other.dbType == dbType) &&
            (identical(other.gitCommit, gitCommit) ||
                other.gitCommit == gitCommit) &&
            (identical(other.buildDate, buildDate) ||
                other.buildDate == buildDate));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      version,
      debugMode,
      automaticBackups,
      dataDir,
      logsDir,
      backupsDir,
      dbType,
      gitCommit,
      buildDate);

  @override
  String toString() {
    return 'SpoolmanServerInfo(version: $version, debugMode: $debugMode, automaticBackups: $automaticBackups, dataDir: $dataDir, logsDir: $logsDir, backupsDir: $backupsDir, dbType: $dbType, gitCommit: $gitCommit, buildDate: $buildDate)';
  }
}

/// @nodoc
abstract mixin class _$SpoolmanServerInfoCopyWith<$Res>
    implements $SpoolmanServerInfoCopyWith<$Res> {
  factory _$SpoolmanServerInfoCopyWith(
          _SpoolmanServerInfo value, $Res Function(_SpoolmanServerInfo) _then) =
      __$SpoolmanServerInfoCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String version,
      bool debugMode,
      bool automaticBackups,
      String dataDir,
      String logsDir,
      String backupsDir,
      String dbType,
      String gitCommit,
      String? buildDate});
}

/// @nodoc
class __$SpoolmanServerInfoCopyWithImpl<$Res>
    implements _$SpoolmanServerInfoCopyWith<$Res> {
  __$SpoolmanServerInfoCopyWithImpl(this._self, this._then);

  final _SpoolmanServerInfo _self;
  final $Res Function(_SpoolmanServerInfo) _then;

  /// Create a copy of SpoolmanServerInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? version = null,
    Object? debugMode = null,
    Object? automaticBackups = null,
    Object? dataDir = null,
    Object? logsDir = null,
    Object? backupsDir = null,
    Object? dbType = null,
    Object? gitCommit = null,
    Object? buildDate = freezed,
  }) {
    return _then(_SpoolmanServerInfo(
      version: null == version
          ? _self.version
          : version // ignore: cast_nullable_to_non_nullable
              as String,
      debugMode: null == debugMode
          ? _self.debugMode
          : debugMode // ignore: cast_nullable_to_non_nullable
              as bool,
      automaticBackups: null == automaticBackups
          ? _self.automaticBackups
          : automaticBackups // ignore: cast_nullable_to_non_nullable
              as bool,
      dataDir: null == dataDir
          ? _self.dataDir
          : dataDir // ignore: cast_nullable_to_non_nullable
              as String,
      logsDir: null == logsDir
          ? _self.logsDir
          : logsDir // ignore: cast_nullable_to_non_nullable
              as String,
      backupsDir: null == backupsDir
          ? _self.backupsDir
          : backupsDir // ignore: cast_nullable_to_non_nullable
              as String,
      dbType: null == dbType
          ? _self.dbType
          : dbType // ignore: cast_nullable_to_non_nullable
              as String,
      gitCommit: null == gitCommit
          ? _self.gitCommit
          : gitCommit // ignore: cast_nullable_to_non_nullable
              as String,
      buildDate: freezed == buildDate
          ? _self.buildDate
          : buildDate // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

// dart format on
