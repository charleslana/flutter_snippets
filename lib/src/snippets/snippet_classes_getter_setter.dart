import 'package:flutter/material.dart';
import 'package:flutter_snippets/src/components/app_bar_with_tab.dart';
import 'package:flutter_snippets/src/components/app_bottom_navigation_bar.dart';
import 'package:flutter_snippets/src/components/app_tab_bar_body.dart';
import 'package:flutter_snippets/src/constants/app_constants.dart';
import 'package:flutter_snippets/src/services/txt_service.dart';

class SnippetClassesGetterSetter extends StatefulWidget {
  const SnippetClassesGetterSetter({Key? key}) : super(key: key);

  @override
  _SnippetClassesGetterSetterState createState() =>
      _SnippetClassesGetterSetterState();
}

class _SnippetClassesGetterSetterState
    extends State<SnippetClassesGetterSetter> {
  String _data = '';

  Future<void> _loadData() async {
    final _loadedData = await TxtService().loadData('getter_setter');
    setState(() {
      _data = _loadedData;
    });
  }

  @override
  void initState() {
    super.initState();
    _loadData();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBarWithTab(
            text: AppConstants.TEXT_CARD_ADVANCED_CLASSES_FILTER_GETTER_SETTER),
        body: AppTabBarBody(data: _data),
        bottomNavigationBar: AppBottomNavigationBar(
          index: 1,
        ),
      ),
    );
  }
}
