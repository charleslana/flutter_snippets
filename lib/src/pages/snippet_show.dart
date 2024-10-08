import 'package:flutter/material.dart';
import 'package:flutter_snippets/src/models/snippet_show_model.dart';
import 'package:flutter_snippets/src/services/text_service.dart';
import 'package:flutter_snippets/src/utils/app_utils.dart';
import 'package:flutter_snippets/src/widgets/app_bar_with_tab.dart';
import 'package:flutter_snippets/src/widgets/app_tab_bar_body.dart';

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
    final loadedData = await TextService().loadData(_snippet!.data);
    setState(() {
      _data = loadedData;
      _isLoading = false;
    });
  }

  @override
  void initState() {
    _tabController = TabController(vsync: this, length: 2);
    super.initState();
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
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
          ? const Scaffold(
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
                onPressed: () => AppUtils.alert(context, _snippet!.tip),
                child: const Icon(
                  Icons.flash_on,
                  color: Colors.white,
                ),
              ),
            ),
    );
  }
}
