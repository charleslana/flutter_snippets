import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_snippets/src/models/snippet_filter_list_model.dart';
import 'package:flutter_snippets/src/models/snippet_filter_model.dart';
import 'package:flutter_snippets/src/utils/app_utils.dart';

class SnippetFilter extends StatefulWidget {
  const SnippetFilter({Key? key}) : super(key: key);

  @override
  _SnippetFilterState createState() => _SnippetFilterState();
}

class _SnippetFilterState extends State<SnippetFilter> {
  final TextEditingController _controller = TextEditingController();
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

  void _clearFilter() {
    FocusManager.instance.primaryFocus?.unfocus();
    
    setState(() {
      _controller.clear();
      if (_items.length != _duplicateItems.length) {
        _items
          ..clear()
          ..addAll(_duplicateItems);
      }
    });
  }

  Future<void> init() async {
    await Future<void>.delayed(Duration.zero).then((_) {
      _items = List<SnippetFilterListModel>.generate(
          _filter.snippets.length, (index) => _filter.snippets[index]);
    });
  }

  @override
  void initState() {
    init();
    super.initState();
  }

  @override
  void didChangeDependencies() {
    if (_items.isEmpty) {
      _items = List<SnippetFilterListModel>.generate(
          _filter.snippets.length, (index) => _filter.snippets[index]);
      _duplicateItems = _items;
    }
    super.didChangeDependencies();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
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
                  controller: _controller,
                  decoration: InputDecoration(
                    labelText: AppLocalizations.of(context)!
                        .filterSearchLabel(_filter.title),
                    hintText: AppLocalizations.of(context)!
                        .filterSearchHint(_filter.title),
                    prefixIcon: const Icon(Icons.search),
                    suffixIcon: IconButton(
                      onPressed: _clearFilter,
                      icon: const Icon(Icons.clear),
                    ),
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
                    padding: const EdgeInsets.all(10),
                    child: SingleChildScrollView(
                      physics: const BouncingScrollPhysics(),
                      child: Wrap(
                        spacing: 10,
                        runSpacing: 10,
                        children: _items.map((item) {
                          return Badge(
                            showBadge: item.isNew ?? item.isUpdated ?? false,
                            toAnimate: false,
                            shape: BadgeShape.square,
                            badgeColor: item.isNew == true
                                ? Colors.purple
                                : Colors.orange,
                            borderRadius: BorderRadius.circular(8),
                            badgeContent: item.isNew == true
                                ? Text(
                                    AppLocalizations.of(context)!
                                        .filterBadgeNew,
                                    style: const TextStyle(color: Colors.white),
                                  )
                                : Text(
                                    AppLocalizations.of(context)!
                                        .filterBadgeUpdated,
                                    style: const TextStyle(color: Colors.white),
                                  ),
                            child: ElevatedButton(
                              onPressed: () {
                                FocusManager.instance.primaryFocus?.unfocus();
                                item.onPressed();
                              },
                              style: ElevatedButton.styleFrom(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 40,
                                  vertical: 16,
                                ),
                                textStyle: const TextStyle(
                                  fontSize: 18,
                                ),
                              ),
                              child: Text(
                                item.text,
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
