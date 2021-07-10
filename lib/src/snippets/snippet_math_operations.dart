import 'package:flutter/material.dart';
import 'package:flutter_snippets/src/components/app_bar_with_tab.dart';
import 'package:flutter_snippets/src/components/app_bottom_navigation_bar.dart';
import 'package:flutter_snippets/src/components/app_tab_bar_body.dart';
import 'package:flutter_snippets/src/constants/app_constants.dart';
import 'package:flutter_snippets/src/services/txt_service.dart';

class SnippetMathOperations extends StatefulWidget {
  const SnippetMathOperations({Key? key}) : super(key: key);

  @override
  _SnippetMathOperationsState createState() => _SnippetMathOperationsState();
}

class _SnippetMathOperationsState extends State<SnippetMathOperations> {
  String _data = '';

  Future<void> _loadData() async {
    final _loadedData = await TxtService().loadData('math_operations');
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
        appBar:
            AppBarWithTab(text: AppConstants.TEXT_CARD_BASIC_MATH_OPERATIONS),
        body: AppTabBarBody(data: _data),
        bottomNavigationBar: AppBottomNavigationBar(
          index: 0,
        ),
      ),
    );
  }
}
