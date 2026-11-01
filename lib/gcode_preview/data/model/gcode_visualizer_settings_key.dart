import 'package:common/service/setting_service.dart';

enum GCodeVisualizerSettingsKey implements KeyValueStoreKey {
  showGrid(true),
  showAxes(true),
  showNextLayer(true),
  showPreviousLayer(false),
  extrusionWidthMultiplier(1),
  showExtrusion(true),
  showRetraction(false),
  showTravel(false),
  ;

  @override
  final Object? defaultValue;

  @override
  String get key => 'gcodeVisualizer_${name}';

  const GCodeVisualizerSettingsKey([this.defaultValue]);
}
