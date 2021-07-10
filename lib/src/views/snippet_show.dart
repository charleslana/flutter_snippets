import 'package:flutter/material.dart';
import 'package:flutter_snippets/src/components/app_bar_with_tab.dart';
import 'package:flutter_snippets/src/components/app_bottom_navigation_bar.dart';
import 'package:flutter_snippets/src/components/app_tab_bar_body.dart';
import 'package:flutter_snippets/src/models/snippet_show_model.dart';
import 'package:flutter_snippets/src/services/txt_service.dart';

class SnippetShow extends StatefulWidget {
  const SnippetShow({Key? key}) : super(key: key);

  @override
  _SnippetShowState createState() => _SnippetShowState();
}

class _SnippetShowState extends State<SnippetShow> {
  SnippetShowModel? _snippet;
  String? _data;
  bool _isLoading = true;

  Future<void> _loadData() async {
    final loadedData = await TxtService().loadData(_snippet!.data);
    setState(() {
      _data = loadedData;
      _isLoading = false;
    });
  }

  @override
  void didChangeDependencies() {
    setState(() {
      _snippet = ModalRoute.of(context)!.settings.arguments as SnippetShowModel;
    });
    _loadData();
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: _isLoading
          ? Center(
              child: CircularProgressIndicator(),
            )
          : Scaffold(
              appBar: AppBarWithTab(text: _snippet!.title),
              body: AppTabBarBody(widget: _snippet!.widget, data: _data!),
              bottomNavigationBar: AppBottomNavigationBar(
                index: _snippet!.bottomNavigationBarIndex,
              ),
            ),
    );
  }
}
