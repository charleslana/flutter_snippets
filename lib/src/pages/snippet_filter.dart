import 'package:flutter/material.dart';
import 'package:flutter_snippets/src/components/app_bottom_navigation_bar.dart';
import 'package:flutter_snippets/src/models/snippet_filter_list_model.dart';
import 'package:flutter_snippets/src/models/snippet_filter_model.dart';
import 'package:flutter_snippets/src/widgets/list_icons_app_bar_widget.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class SnippetFilter extends StatefulWidget {
  const SnippetFilter({Key? key}) : super(key: key);

  @override
  _SnippetFilterState createState() => _SnippetFilterState();
}

class _SnippetFilterState extends State<SnippetFilter> {
  TextEditingController _editingController = TextEditingController();
  late final SnippetFilterModel _filter =
      ModalRoute.of(context)!.settings.arguments as SnippetFilterModel;
  List<SnippetFilterListModel> _duplicateItems = [];
  List<SnippetFilterListModel> _items = [];

  void _filterSearchResults(String query) {
    List<SnippetFilterListModel> dummySearchList = [];

    dummySearchList.addAll(_duplicateItems);

    if (query.trim().isNotEmpty) {
      List<SnippetFilterListModel> dummyListData = [];

      dummySearchList.forEach((item) {
        if (item.text.toLowerCase().contains(query.toLowerCase())) {
          dummyListData.add(item);
        }
      });
      setState(() {
        _items.clear();
        _items.addAll(dummyListData);
      });
    } else {
      setState(() {
        _items.clear();
        _items.addAll(_duplicateItems);
      });
    }
  }

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration.zero).then((_) {
      _items = List<SnippetFilterListModel>.generate(
          _filter.snippets.length, (index) => _filter.snippets[index]);
    });
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    if (_items.isEmpty) {
      _items = List<SnippetFilterListModel>.generate(
          _filter.snippets.length, (index) => _filter.snippets[index]);
      _duplicateItems = _items;
    }
  }

  @override
  void dispose() {
    super.dispose();
    _editingController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: GestureDetector(
        onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
        child: Scaffold(
          appBar: AppBar(
            title: Text(_filter.title),
            actions: ListIconsAppBarWidget().listWidgets,
          ),
          body: Column(
            children: [
              Padding(
                padding: EdgeInsets.all(8.0),
                child: TextField(
                  onChanged: (value) {
                    _filterSearchResults(value);
                  },
                  controller: _editingController,
                  decoration: InputDecoration(
                    labelText: AppLocalizations.of(context)!
                        .filterSearchLabel(_filter.title),
                    hintText: AppLocalizations.of(context)!
                        .filterSearchHint(_filter.title),
                    prefixIcon: Icon(Icons.search),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(25.0)),
                    ),
                  ),
                ),
              ),
              _items.isEmpty
                  ? Text(AppLocalizations.of(context)!.filterSearchNoResults)
                  : Expanded(
                      child: SingleChildScrollView(
                        child: Wrap(
                          children: _items.map((item) {
                            return Padding(
                              padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                              child: TextButton(
                                onPressed: item.onPressed,
                                child: Padding(
                                  padding: EdgeInsets.fromLTRB(30, 10, 30, 10),
                                  child: Text(
                                    item.text,
                                  ),
                                ),
                              ),
                            );
                          }).toList(),
                        ),
                      ),
                    ),
            ],
          ),
          bottomNavigationBar: AppBottomNavigationBar(
            index: _filter.bottomNavigationBarIndex,
          ),
        ),
      ),
    );
  }
}
