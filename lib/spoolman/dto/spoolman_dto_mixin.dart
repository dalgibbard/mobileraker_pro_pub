/*
 * Copyright (2024). Patrick Schmidt.
 * All rights reserved.
 */

mixin SpoolmanIdentifiableDtoMixin {
  int get id;

  String get name;

  DateTime get registered;

  String? get comment;
}

typedef SpoolmanDtoMixin = SpoolmanIdentifiableDtoMixin;
