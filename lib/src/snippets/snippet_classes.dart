import 'package:flutter/material.dart';
import 'package:flutter_snippets/src/components/app_bar_with_tab.dart';
import 'package:flutter_snippets/src/components/app_bottom_navigation_bar.dart';
import 'package:flutter_snippets/src/components/app_tab_bar_body.dart';
import 'package:flutter_snippets/src/constants/app_constants.dart';
import 'package:flutter_snippets/src/services/txt_service.dart';

class SnippetClasses extends StatefulWidget {
  const SnippetClasses({Key? key}) : super(key: key);

  @override
  _SnippetClassesState createState() => _SnippetClassesState();
}

class _SnippetClassesState extends State<SnippetClasses> {
  String _data = '';

  Future<void> _loadData() async {
    final _loadedData = await TxtService().loadData('class');
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
            text: AppConstants.TEXT_CARD_ADVANCED_CLASSES_FILTER_CLASSES),
        body: AppTabBarBody(data: _data),
        bottomNavigationBar: AppBottomNavigationBar(
          index: 1,
        ),
      ),
    );
  }
}
