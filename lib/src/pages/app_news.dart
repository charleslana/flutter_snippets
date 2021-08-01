import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class AppNews extends StatefulWidget {
  const AppNews({Key? key}) : super(key: key);

  @override
  _AppNewsState createState() => _AppNewsState();
}

class _AppNewsState extends State<AppNews> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(AppLocalizations.of(context)!.appNewsTitle),
        ),
        body: Center(
          child: Text('Coming soon'),
        ),
      ),
    );
  }
}
