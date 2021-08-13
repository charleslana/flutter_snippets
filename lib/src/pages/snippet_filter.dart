import 'package:flutter/material.dart';
import 'package:flutter_snippets/src/models/snippet_filter_list_model.dart';
import 'package:flutter_snippets/src/models/snippet_filter_model.dart';
import 'package:flutter_snippets/src/utils/app_utils.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class SnippetFilter extends StatefulWidget {
  const SnippetFilter({Key? key}) : super(key: key);

  @override
  _SnippetFilterState createState() => _SnippetFilterState();
}

class _SnippetFilterState extends State<SnippetFilter> {
  final TextEditingController _editingController = TextEditingController();
  late final SnippetFilterModel _filter =
      ModalRoute.of(context)!.settings.arguments as SnippetFilterModel;
  List<SnippetFilterListModel> _duplicateItems = [];
  List<SnippetFilterListModel> _items = [];

  void _filterSearchResults(String query) {
    final List<SnippetFilterListModel> dummySearchList = [..._duplicateItems];

    if (query.trim().isNotEmpty) {
      final List<SnippetFilterListModel> dummyListData = [];

      for (final item in dummySearchList) {
        if (AppUtils.removeDiacritics(item.text.toLowerCase())
            .contains(AppUtils.removeDiacritics(query).toLowerCase())) {
          dummyListData.add(item);
        }
      }

      setState(() {
        _items
          ..clear()
          ..addAll(dummyListData);
      });
    } else {
      setState(() {
        _items
          ..clear()
          ..addAll(_duplicateItems);
      });
    }
  }

  Future<void> init() async {
    await Future<void>.delayed(Duration.zero).then((_) {
      _items = List<SnippetFilterListModel>.generate(
          _filter.snippets.length, (index) => _filter.snippets[index]);
    });
  }

  @override
  void initState() {
    super.initState();
    init();
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
          ),
          body: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8),
                child: TextField(
                  onChanged: _filterSearchResults,
                  controller: _editingController,
                  decoration: InputDecoration(
                    labelText: AppLocalizations.of(context)!
                        .filterSearchLabel(_filter.title),
                    hintText: AppLocalizations.of(context)!
                        .filterSearchHint(_filter.title),
                    prefixIcon: const Icon(Icons.search),
                    border: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(25)),
                    ),
                  ),
                ),
              ),
              if (_items.isEmpty)
                Text(AppLocalizations.of(context)!.filterSearchNoResults)
              else
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: SingleChildScrollView(
                      physics: const BouncingScrollPhysics(
                        parent: AlwaysScrollableScrollPhysics(),
                      ),
                      child: Wrap(
                        children: _items.map((item) {
                          return Padding(
                            padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                            child: TextButton(
                              onPressed: () {
                                FocusManager.instance.primaryFocus?.unfocus();
                                item.onPressed();
                                setState(() {
                                  _editingController.clear();
                                  if (_items.length != _duplicateItems.length) {
                                    _items
                                      ..clear()
                                      ..addAll(_duplicateItems);
                                  }
                                });
                              },
                              child: Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(30, 10, 30, 10),
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
                ),
            ],
          ),
        ),
      ),
    );
  }
}
