import 'data/model/gcode_structure.dart';

/// Stub stand-in layer meta data.
class LayerMetaData {
  const LayerMetaData(this.layer, this.moveStart, this.moveEnd, this.currentMove);

  final int layer;
  final int moveStart;
  final int moveEnd;
  final int currentMove;
}

/// Stub stand-in render data.
class GCodeRenderData {
  const GCodeRenderData(this.structure, this.layerIndex, [this.stopAtMove]);

  final GCodeStructure structure;
  final int layerIndex;
  final int? stopAtMove;

  LayerMetaData get metaData => LayerMetaData(layerIndex, 0, 1, stopAtMove ?? 0);
}

/// Stub stand-in renderer: parses nothing, renders nothing.
class GCodeLayerRenderer {
  GCodeLayerRenderer(this.structure);

  final GCodeStructure structure;

  GCodeRenderData createRenderDataForLayer({required int layerIndex, int? stopAtMove}) {
    return GCodeRenderData(structure, layerIndex, stopAtMove);
  }

  GCodeRenderData createRenderDataForFilePosition(int filePosition) {
    return GCodeRenderData(structure, 0, filePosition);
  }

  void dispose() {}
}
