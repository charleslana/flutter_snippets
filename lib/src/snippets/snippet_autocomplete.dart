import 'package:flutter/material.dart';

class SnippetAutocomplete extends StatefulWidget {
  const SnippetAutocomplete({Key? key}) : super(key: key);

  @override
  _SnippetAutocompleteState createState() => _SnippetAutocompleteState();
}

class _SnippetAutocompleteState extends State<SnippetAutocomplete> {
  final List<SnippetAutocompleteRandomText> continentOptions = const [
    SnippetAutocompleteRandomText(
      id: 1,
      name: 'First',
    ),
    SnippetAutocompleteRandomText(
      id: 2,
      name: 'Second',
    ),
    SnippetAutocompleteRandomText(
      id: 3,
      name: 'Third',
    ),
    SnippetAutocompleteRandomText(
      id: 4,
      name: 'Fourth',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Autocomplete<SnippetAutocompleteRandomText>(
          optionsBuilder: (TextEditingValue textEditingValue) {
            return continentOptions
                .where((SnippetAutocompleteRandomText continent) => continent
                    .name
                    .toLowerCase()
                    .startsWith(textEditingValue.text.toLowerCase()))
                .toList();
          },
          displayStringForOption: (SnippetAutocompleteRandomText option) =>
              option.name,
          fieldViewBuilder: (BuildContext context,
              TextEditingController fieldTextEditingController,
              FocusNode fieldFocusNode,
              VoidCallback onFieldSubmitted) {
            return TextField(
              controller: fieldTextEditingController,
              focusNode: fieldFocusNode,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Please enter a search text',
              ),
            );
          },
          onSelected: (SnippetAutocompleteRandomText selection) {},
          optionsViewBuilder: (BuildContext context,
              AutocompleteOnSelected<SnippetAutocompleteRandomText> onSelected,
              Iterable<SnippetAutocompleteRandomText> options) {
            return Align(
              alignment: Alignment.topLeft,
              child: Material(
                child: Container(
                  width: 300,
                  color: Colors.blue,
                  child: ListView.builder(
                    padding: const EdgeInsets.all(10),
                    itemCount: options.length,
                    itemBuilder: (BuildContext context, int index) {
                      final SnippetAutocompleteRandomText option =
                          options.elementAt(index);

                      return GestureDetector(
                        onTap: () {
                          onSelected(option);
                        },
                        child: ListTile(
                          title: Text(
                            option.toString(),
                            style: const TextStyle(color: Colors.white),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

class SnippetAutocompleteRandomText {
  const SnippetAutocompleteRandomText({
    required this.id,
    required this.name,
  });

  final int id;
  final String name;

  @override
  String toString() {
    return name;
  }
}
