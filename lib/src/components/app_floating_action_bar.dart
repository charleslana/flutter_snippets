import 'package:flutter/material.dart';
import 'package:flutter_snippets/src/routes/app_routes.dart';

class AppFloatinActionBar extends StatefulWidget {
  const AppFloatinActionBar({Key? key}) : super(key: key);

  @override
  _AppFloatinActionBarState createState() => _AppFloatinActionBarState();
}

class _AppFloatinActionBarState extends State<AppFloatinActionBar>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  bool _isOpened = false;
  late Animation<Color?> _buttonColor;
  late Animation<double> _animateIcon;
  late Animation<double> _translateButton;
  Curve _curve = Curves.easeOut;
  double _fabHeight = 56.0;

  void _animate() {
    if (!_isOpened) {
      _controller.forward();
    } else {
      _controller.reverse();
    }
    _isOpened = !_isOpened;
  }

  Widget inbox() {
    return Container(
      child: FloatingActionButton(
        heroTag: 'floatNews',
        onPressed: () => Navigator.of(context).pushNamed(AppRoutes.appNews),
        tooltip: 'News',
        backgroundColor: Colors.blue,
        child: Icon(Icons.article),
      ),
    );
  }

  Widget toggle() {
    return Container(
      child: FloatingActionButton(
        heroTag: 'floatToggle',
        backgroundColor: _buttonColor.value,
        onPressed: _animate,
        tooltip: 'Toggle',
        child: AnimatedIcon(
          icon: AnimatedIcons.menu_close,
          progress: _animateIcon,
        ),
      ),
    );
  }

  @override
  void initState() {
    _controller =
        AnimationController(vsync: this, duration: Duration(milliseconds: 500))
          ..addListener(() {
            setState(() {});
          });
    _animateIcon = Tween<double>(begin: 0.0, end: 1.0).animate(_controller);
    _buttonColor = ColorTween(
      begin: Colors.blue,
      end: Colors.red,
    ).animate(CurvedAnimation(
      parent: _controller,
      curve: Interval(
        0.00,
        1.00,
        curve: Curves.linear,
      ),
    ));
    _translateButton = Tween<double>(
      begin: _fabHeight,
      end: -14.0,
    ).animate(CurvedAnimation(
      parent: _controller,
      curve: Interval(
        0.0,
        0.75,
        curve: _curve,
      ),
    ));
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: FractionalOffset.bottomRight,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Transform(
            transform: Matrix4.translationValues(
              0.0,
              _translateButton.value,
              0.0,
            ),
            child: inbox(),
          ),
          toggle(),
        ],
      ),
    );
  }
}
