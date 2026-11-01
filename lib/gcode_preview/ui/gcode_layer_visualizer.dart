import 'package:flutter/material.dart';

/// Stub stand-in: gcode layer visualization is disabled in this build.
class GCodeLayerVisualizer extends StatelessWidget {
  const GCodeLayerVisualizer({super.key, this.printerConfig, this.currentLayer});

  final Object? printerConfig;
  final Object? currentLayer;

  @override
  Widget build(BuildContext context) {
    return const SizedBox.shrink();
  }
}
