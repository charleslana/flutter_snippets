import 'package:flutter/material.dart';

class SnippetOverlayEntry extends StatefulWidget {
  const SnippetOverlayEntry({Key? key}) : super(key: key);

  @override
  _SnippetOverlayEntryState createState() => _SnippetOverlayEntryState();
}

class _SnippetOverlayEntryState extends State<SnippetOverlayEntry> {
  late OverlayEntry _overlayEntry;

  void _showOverlay(BuildContext context) {
    final OverlayState? overlayState = Overlay.of(context);

    _overlayEntry = OverlayEntry(builder: (context) {
      return Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.blue.withOpacity(0.3),
        child: Center(
          child: ElevatedButton(
            onPressed: () => _overlayEntry.remove(),
            child: const Text('Close Overlay'),
          ),
        ),
      );
    });

    overlayState!.insert(_overlayEntry);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () => _showOverlay(context),
              child: const Text('Open Overlay'),
            ),
          ],
        ),
      ),
    );
  }
}
