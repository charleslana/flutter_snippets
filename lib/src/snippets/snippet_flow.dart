import 'package:flutter/material.dart';

class SnippetFlow extends StatefulWidget {
  const SnippetFlow({Key? key}) : super(key: key);

  @override
  _SnippetFlowState createState() => _SnippetFlowState();
}

class _SnippetFlowState extends State<SnippetFlow>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  IconData _icons = Icons.notifications;
  final List<IconData> _menuItems = <IconData>[
    Icons.home,
    Icons.new_releases,
    Icons.notifications,
    Icons.settings,
    Icons.menu,
  ];

  void _updateMenu(IconData icon) {
    if (icon != Icons.menu) {
      setState(() => _icons = icon);
    }
  }

  Widget _flowMenuItem(IconData icon) {
    final double buttonDiameter =
        MediaQuery.of(context).size.width / _menuItems.length;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: RawMaterialButton(
        fillColor: _icons == icon ? Colors.amber[700] : Colors.blue,
        splashColor: Colors.amber[100],
        shape: const CircleBorder(),
        constraints: BoxConstraints.tight(Size(buttonDiameter, buttonDiameter)),
        onPressed: () {
          _updateMenu(icon);
          _controller.status == AnimationStatus.completed
              ? _controller.reverse()
              : _controller.forward();
        },
        child: Icon(
          icon,
          color: Colors.white,
          size: 45,
        ),
      ),
    );
  }

  @override
  void initState() {
    _controller = AnimationController(
      duration: const Duration(milliseconds: 250),
      vsync: this,
    );
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Flow(
        delegate: SnippetFlowFlowMenuDelegate(menuAnimation: _controller),
        children: _menuItems.map<Widget>(_flowMenuItem).toList(),
      ),
    );
  }
}

class SnippetFlowFlowMenuDelegate extends FlowDelegate {
  SnippetFlowFlowMenuDelegate({required this.menuAnimation})
      : super(repaint: menuAnimation);

  final Animation<double> menuAnimation;

  @override
  bool shouldRepaint(SnippetFlowFlowMenuDelegate oldDelegate) {
    return menuAnimation != oldDelegate.menuAnimation;
  }

  @override
  void paintChildren(FlowPaintingContext context) {
    double dx = 0;
    for (int i = 0; i < context.childCount; ++i) {
      dx = context.getChildSize(i)!.width * i;
      context.paintChild(
        i,
        transform: Matrix4.translationValues(
          dx * menuAnimation.value,
          0,
          0,
        ),
      );
    }
  }
}
