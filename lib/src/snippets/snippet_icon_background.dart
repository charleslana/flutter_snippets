import 'package:flutter/material.dart';

class SnippetIconBackground extends StatelessWidget {
  const SnippetIconBackground({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: CircleAvatar(
          radius: 30,
          backgroundColor: const Color(0xff94d500),
          child: IconButton(
            icon: const Icon(
              Icons.search,
              color: Colors.black,
            ),
            onPressed: () {},
          ),
        ),
      ),
    );
  }
}
