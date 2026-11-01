// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'spoolman_server_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SpoolmanServerInfo _$SpoolmanServerInfoFromJson(Map<String, dynamic> json) =>
    _SpoolmanServerInfo(
      version: json['version'] as String,
      debugMode: json['debug_mode'] as bool,
      automaticBackups: json['automatic_backups'] as bool,
      dataDir: json['data_dir'] as String,
      logsDir: json['logs_dir'] as String,
      backupsDir: json['backups_dir'] as String,
      dbType: json['db_type'] as String,
      gitCommit: json['git_commit'] as String,
      buildDate: json['build_date'] as String?,
    );

Map<String, dynamic> _$SpoolmanServerInfoToJson(_SpoolmanServerInfo instance) =>
    <String, dynamic>{
      'version': instance.version,
      'debug_mode': instance.debugMode,
      'automatic_backups': instance.automaticBackups,
      'data_dir': instance.dataDir,
      'logs_dir': instance.logsDir,
      'backups_dir': instance.backupsDir,
      'db_type': instance.dbType,
      'git_commit': instance.gitCommit,
      'build_date': instance.buildDate,
    };
