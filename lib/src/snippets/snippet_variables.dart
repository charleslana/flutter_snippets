import 'package:flutter/material.dart';
import 'package:flutter_snippets/src/components/app_bar_with_tab.dart';
import 'package:flutter_snippets/src/components/app_bottom_navigation_bar.dart';
import 'package:flutter_snippets/src/components/app_tab_bar_code.dart';
import 'package:flutter_snippets/src/constants/app_constants.dart';
import 'package:flutter_snippets/src/services/txt_service.dart';

class SnippetVariables extends StatefulWidget {
  const SnippetVariables({Key? key}) : super(key: key);

  @override
  _SnippetVariablesState createState() => _SnippetVariablesState();
}

class _SnippetVariablesState extends State<SnippetVariables> {
  String _data = '';

  Future<void> _loadData() async {
    final _loadedData = await TxtService().loadData('variables');
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
        appBar: AppBarWithTab(text: AppConstants.TEXT_CARD_BASIC_VARIABLES),
        body: AppTabBarCode(data: _data),
        bottomNavigationBar: AppBottomNavigationBar(
          index: 0,
        ),
      ),
    );
  }
}
