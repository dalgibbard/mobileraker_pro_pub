import 'package:flutter/material.dart';

/// Stub stand-in: gcode preview card renders an empty placeholder.
class GCodePreviewCard extends StatelessWidget {
  const GCodePreviewCard({super.key, this.machineUUID});

  final String? machineUUID;

  static Widget preview() {
    return const SizedBox(height: 120, child: Center(child: Text('GCode Preview (disabled)')));
  }

  @override
  Widget build(BuildContext context) {
    return const SizedBox.shrink();
  }
}
