import 'package:flutter/material.dart';

class SnippetScrollToBottomOrTop extends StatefulWidget {
  const SnippetScrollToBottomOrTop({Key? key}) : super(key: key);

  @override
  _SnippetScrollToBottomOrTopState createState() =>
      _SnippetScrollToBottomOrTopState();
}

class _SnippetScrollToBottomOrTopState
    extends State<SnippetScrollToBottomOrTop> {
  final ScrollController _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        controller: _scrollController,
        itemCount: 100,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text('Item ${index + 1}'),
          );
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Padding(
        padding: const EdgeInsets.all(8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FloatingActionButton(
              heroTag: 'btn1',
              onPressed: () {
                if (_scrollController.hasClients) {
                  final position = _scrollController.position.maxScrollExtent;
                  _scrollController.animateTo(
                    position,
                    duration: const Duration(seconds: 2),
                    curve: Curves.easeOut,
                  );
                }
              },
              isExtended: true,
              tooltip: 'Scroll to Bottom',
              child: const Icon(Icons.arrow_downward),
            ),
            const SizedBox(
              width: 40,
            ),
            FloatingActionButton(
              heroTag: 'btn2',
              onPressed: () {
                if (_scrollController.hasClients) {
                  final position = _scrollController.position.minScrollExtent;
                  _scrollController.animateTo(
                    position,
                    duration: const Duration(seconds: 2),
                    curve: Curves.easeOut,
                  );
                }
              },
              isExtended: true,
              tooltip: 'Scroll to Top',
              child: const Icon(Icons.arrow_upward),
            ),
          ],
        ),
      ),
    );
  }
}
