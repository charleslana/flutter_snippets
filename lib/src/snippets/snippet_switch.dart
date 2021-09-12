import 'package:flutter/material.dart';

class SnippetSwitch extends StatefulWidget {
  const SnippetSwitch({Key? key}) : super(key: key);

  @override
  _SnippetSwitchState createState() => _SnippetSwitchState();
}

class _SnippetSwitchState extends State<SnippetSwitch> {
  bool _isSwitchOn = false;

  void _onSwitchChanged(bool value) {
    setState(() {
      _isSwitchOn = !_isSwitchOn;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Transform.scale(
          scale: 2,
          child: Switch(
            onChanged: _onSwitchChanged,
            value: _isSwitchOn,
            activeColor: Colors.blue,
            activeTrackColor: Colors.green,
            inactiveThumbColor: Colors.white,
            inactiveTrackColor: Colors.red,
            activeThumbImage:
                Image.network('https://i.imgur.com/hEbcdEB.png').image,
          ),
        ),
      ),
    );
  }
}
