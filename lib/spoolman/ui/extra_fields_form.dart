import 'package:flutter/material.dart';

import '../dto/extra_fields.dart';
import '../dto/spoolman_entity_type_enum.dart';

/// Stub stand-in: extra fields are not editable in this build.
class ExtraFieldsFormSection extends StatefulWidget {
  const ExtraFieldsFormSection({
    super.key,
    required this.machineUUID,
    required this.type,
    this.extraValues,
    this.header,
  });

  final String machineUUID;
  final SpoolmanEntityType type;
  final ExtraFields? extraValues;
  final Widget? header;

  @override
  State<ExtraFieldsFormSection> createState() => _ExtraFieldsFormSectionState();
}

class _ExtraFieldsFormSectionState extends State<ExtraFieldsFormSection> {
  @override
  Widget build(BuildContext context) {
    return const SizedBox.shrink();
  }
}
