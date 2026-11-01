import 'package:flutter/material.dart';

import '../dto/extra_fields.dart';
import '../dto/spoolman_entity_type_enum.dart';
import 'property_with_title.dart';

/// Stub stand-in: shows the raw extra fields as plain key/value rows.
class ExtraFieldsView extends StatelessWidget {
  const ExtraFieldsView({super.key, required this.machineUUID, required this.type, this.extra});

  final String machineUUID;
  final SpoolmanEntityType type;
  final ExtraFields? extra;

  @override
  Widget build(BuildContext context) {
    final fields = extra?.fields ?? const <ExtraField>[];
    if (fields.isEmpty) return const SizedBox.shrink();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        for (final field in fields)
          PropertyWithTitle.text(
            title: field.key,
            property: '${field.value ?? ''}',
          ),
      ],
    );
  }
}
