/*
 * Copyright (c) 2024. Patrick Schmidt.
 * All rights reserved.
 */

import 'package:common/util/extensions/object_extension.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:mobileraker_pro/spoolman/dto/filament.dart';

extension UiFilament on GetFilament {
  Color? get color => colorHex?.let((it) => Color(int.tryParse(it, radix: 16) ?? Colors.white24.value));

  String displayNameWithDetails([NumberFormat? numberFormat]) {
    final parts = [name, material, vendor?.name].whereType<String>().where((e) => e.isNotEmpty).join(' - ');
    return parts.isEmpty ? 'Filament $id' : parts;
  }
}
