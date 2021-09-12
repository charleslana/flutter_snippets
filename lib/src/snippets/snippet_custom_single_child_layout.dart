import 'package:flutter/material.dart';

class SnippetCustomSingleChildLayout extends StatelessWidget {
  const SnippetCustomSingleChildLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ValueNotifier<Size> size = ValueNotifier<Size>(const Size(200, 100));

    return Scaffold(
      body: Column(
        children: [
          CustomSingleChildLayout(
            delegate: SnippetCustomSingleChildLayoutCustomLayoutDelegate(size),
            child: Container(
              color: Colors.teal,
              width: 50,
              height: 300,
            ),
          ),
        ],
      ),
    );
  }
}

class SnippetCustomSingleChildLayoutCustomLayoutDelegate
    extends SingleChildLayoutDelegate {
  SnippetCustomSingleChildLayoutCustomLayoutDelegate(this.size)
      : super(relayout: size);

  final ValueNotifier<Size> size;

  @override
  Size getSize(BoxConstraints constraints) {
    return size.value;
  }

  @override
  BoxConstraints getConstraintsForChild(BoxConstraints constraints) {
    return BoxConstraints.tight(size.value / 2);
  }

  @override
  Offset getPositionForChild(Size size, Size childSize) {
    return Offset(size.width / 4, size.height / 4);
  }

  @override
  bool shouldRelayout(
      SnippetCustomSingleChildLayoutCustomLayoutDelegate oldDelegate) {
    return size != oldDelegate.size;
  }
}
