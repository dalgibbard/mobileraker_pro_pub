import 'package:common/service/ui/dialog_service_interface.dart';
import 'package:flutter/material.dart';

import '../dto/get_spool.dart';

/// Stub stand-in for the private adjust-spool dialog. Always resolves cancelled.
class AdjustSpoolFilamentDialog extends StatefulWidget {
  const AdjustSpoolFilamentDialog({super.key, required this.request, required this.completer});

  final DialogRequest request;
  final DialogCompleter completer;

  @override
  State<AdjustSpoolFilamentDialog> createState() => _AdjustSpoolFilamentDialogState();
}

class _AdjustSpoolFilamentDialogState extends State<AdjustSpoolFilamentDialog> {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Consume filament'),
      content: const Text('Spoolman is disabled in this build.'),
      actions: [
        TextButton(
          onPressed: () {
            widget.completer(DialogResponse(confirmed: false));
          },
          child: const Text('Cancel'),
        ),
      ],
    );
  }
}

/// Request type used together with the consume-spool dialog.
class AdjustSpoolRequest {
  const AdjustSpoolRequest({required this.spool, this.allowLength = true, this.allowWeight = true});

  final GetSpool spool;
  final bool allowLength;
  final bool allowWeight;
}
