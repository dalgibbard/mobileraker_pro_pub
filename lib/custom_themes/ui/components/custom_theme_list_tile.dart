import 'package:flutter/material.dart';

import '../../data/model/custom_theme_pack.dart';

/// Stub stand-in tile for the custom theme list.
class CustomThemeListTile extends StatelessWidget {
  const CustomThemeListTile({
    super.key,
    required this.pack,
    required this.onEdit,
    required this.onMore,
    this.isActive = false,
  });

  final CustomThemePack pack;
  final VoidCallback onEdit;
  final VoidCallback onMore;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    final themeData = Theme.of(context);
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
        side: isActive ? BorderSide(color: themeData.colorScheme.primary) : BorderSide.none,
      ),
      child: ListTile(
        leading: pack.logoPath != null
            ? ClipOval(child: Image.asset(pack.logoPath!, width: 40, height: 40, errorBuilder: (_, __, ___) => const Icon(Icons.palette)))
            : const Icon(Icons.palette),
        title: Text(pack.name),
        trailing: IconButton(onPressed: onMore, icon: const Icon(Icons.more_vert)),
        onTap: onEdit,
      ),
    );
  }
}
