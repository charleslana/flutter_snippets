import 'package:flutter/material.dart';

class SnippetMaterialBanner extends StatelessWidget {
  const SnippetMaterialBanner({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          child: const Text('Show MaterialBanner'),
          onPressed: () => ScaffoldMessenger.of(context).showMaterialBanner(
            MaterialBanner(
              padding: const EdgeInsets.all(20),
              content: const Text(
                'Hello, I am a Material Banner',
                style: TextStyle(color: Colors.white),
              ),
              leading: const Icon(
                Icons.info,
                color: Colors.white,
              ),
              backgroundColor: Colors.blue,
              actions: [
                TextButton(
                  onPressed: () =>
                      ScaffoldMessenger.of(context).hideCurrentMaterialBanner(),
                  child: const Text(
                    'Dismiss',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
