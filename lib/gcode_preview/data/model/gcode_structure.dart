/// Stub stand-in for the parsed gcode structure.
class GCodeLayer {
  const GCodeLayer(this.layerIndex, this.z);

  final int layerIndex;
  final double z;
}

class GCodeStructure {
  const GCodeStructure(this.layers);

  GCodeStructure.empty() : layers = const <GCodeLayer>[];

  final List<GCodeLayer> layers;

  int get layerCount => layers.length;

  int get maxLayer => layers.isEmpty ? 0 : layers.last.layerIndex;
}
