import 'package:flutter/material.dart';

import '../ad_block_unit.dart';

/// Stub stand-in: renders nothing (ads disabled in this build).
class AdBanner extends StatelessWidget {
  const AdBanner({
    super.key,
    required this.unit,
    this.constraints,
    this.animated = true,
    this.placeholder = false,
  });

  final AdBlockUnit unit;
  final BoxConstraints? constraints;
  final bool animated;
  final bool placeholder;

  @override
  Widget build(BuildContext context) {
    return const SizedBox.shrink();
  }
}

class InlineAdaptiveAdBanner extends StatelessWidget {
  const InlineAdaptiveAdBanner({
    super.key,
    required this.unit,
    this.constraints,
    this.animated = true,
    this.placeholder = false,
  });

  final AdBlockUnit unit;
  final BoxConstraints? constraints;
  final bool animated;
  final bool placeholder;

  @override
  Widget build(BuildContext context) {
    return const SizedBox.shrink();
  }
}
