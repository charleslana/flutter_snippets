import 'package:flutter/material.dart';
import 'package:flutter_snippets/src/components/app_bar_with_tab.dart';
import 'package:flutter_snippets/src/components/app_tab_bar_body.dart';
import 'package:flutter_snippets/src/models/snippet_show_model.dart';
import 'package:flutter_snippets/src/services/txt_service.dart';
import 'package:flutter_snippets/src/utils/app_utils.dart';

class SnippetShow extends StatefulWidget {
  const SnippetShow({Key? key}) : super(key: key);

  @override
  _SnippetShowState createState() => _SnippetShowState();
}

class _SnippetShowState extends State<SnippetShow>
    with TickerProviderStateMixin {
  SnippetShowModel? _snippet;
  String? _data;
  bool _isLoading = true;
  late TabController _tabController;

  Future<void> _loadData() async {
    final loadedData = await TxtService().loadData(_snippet!.data);
    setState(() {
      _data = loadedData;
      _isLoading = false;
    });
  }

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: 2);
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
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
          ? Scaffold(
              body: LinearProgressIndicator(),
            )
          : Scaffold(
              appBar: AppBarWithTab(
                title: _snippet!.title,
                tabController: _tabController,
              ),
              body: AppTabBarBody(
                widget: _snippet!.widget,
                data: _data!,
                tabController: _tabController,
              ),
              floatingActionButtonLocation:
                  FloatingActionButtonLocation.endFloat,
              floatingActionButton: FloatingActionButton(
                heroTag: 'show',
                child: Icon(Icons.lightbulb, color: Colors.white),
                onPressed: () => AppUtils.alert(_snippet!.tip, context),
              ),
            ),
    );
  }
}
