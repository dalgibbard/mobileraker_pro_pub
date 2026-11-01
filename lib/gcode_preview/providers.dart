import 'package:common/data/dto/files/gcode_file.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'data/model/gcode_structure.dart';

part 'providers.g.dart';

/// Stub stand-in: gcode parsing is disabled, so this always yields an empty structure.
@riverpod
Future<GCodeStructure> gcodeStructure(Ref ref, String machineUUID, GCodeFile file) async {
  return GCodeStructure.empty();
}
