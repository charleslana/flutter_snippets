import 'package:flutter/material.dart';
import 'package:flutter_snippets/src/components/app_bar_with_tab.dart';
import 'package:flutter_snippets/src/components/app_bottom_navigation_bar.dart';
import 'package:flutter_snippets/src/components/app_tab_bar_body.dart';
import 'package:flutter_snippets/src/constants/app_constants.dart';
import 'package:flutter_snippets/src/services/txt_service.dart';

class SnippetTypes extends StatefulWidget {
  const SnippetTypes({Key? key}) : super(key: key);

  @override
  _SnippetTypesState createState() => _SnippetTypesState();
}

class _SnippetTypesState extends State<SnippetTypes> {
  String _data = '';

  Future<void> _loadData() async {
    final _loadedData = await TxtService().loadData('types');
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
        appBar: AppBarWithTab(text: AppConstants.TEXT_CARD_BASIC_TYPES),
        body: AppTabBarBody(data: _data),
        bottomNavigationBar: AppBottomNavigationBar(
          index: 0,
        ),
      ),
    );
  }
}
