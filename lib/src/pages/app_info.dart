import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_snippets/src/api/firebase_api.dart';
import 'package:flutter_snippets/src/components/app_custom_bar.dart';
import 'package:flutter_snippets/src/constants/app_constants.dart';
import 'package:flutter_snippets/src/models/news.dart';
import 'package:flutter_snippets/src/provider/news_provider.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';

class AppInfo extends StatefulWidget {
  const AppInfo({Key? key}) : super(key: key);

  @override
  _AppInfoState createState() => _AppInfoState();
}

class _AppInfoState extends State<AppInfo> {
  Future<void> _onRefresh() async {
    FirebaseApi.readNews();
  }

  void _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  Widget buildText(String text) => Center(
        child: Text(
          text,
          style: TextStyle(fontSize: 24, color: Colors.white),
        ),
      );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppCustomBar(title: AppLocalizations.of(context)!.appInfoTitle),
        body: Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Card(
                child: Center(
                  child: Padding(
                    padding: EdgeInsets.all(10),
                    child: Wrap(
                      crossAxisAlignment: WrapCrossAlignment.center,
                      children: [
                        Padding(
                          padding: EdgeInsets.all(5),
                          child: InkWell(
                            onTap: () => _launchURL(AppConstants.urlLinkedin),
                            child: CircleAvatar(
                              child: FaIcon(FontAwesomeIcons.linkedin),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(5),
                          child: InkWell(
                            onTap: () => _launchURL(AppConstants.urlGithub),
                            child: CircleAvatar(
                              child: FaIcon(FontAwesomeIcons.github),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(5),
                          child: InkWell(
                            onTap: () => _launchURL(AppConstants.urlGooglePlay),
                            child: CircleAvatar(
                              child: FaIcon(FontAwesomeIcons.googlePlay),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Divider(),
              Center(
                child: Text(
                  AppLocalizations.of(context)!.appNewsTitle,
                  style: Theme.of(context).textTheme.headline5,
                ),
              ),
              StreamBuilder<List<News>>(
                stream: FirebaseApi.readNews(),
                builder: (context, snapshot) {
                  switch (snapshot.connectionState) {
                    case ConnectionState.waiting:
                      return Center(child: LinearProgressIndicator());
                    default:
                      if (snapshot.hasError) {
                        return buildText('Something Went Wrong Try later');
                      } else {
                        final news = snapshot.data;

                        final provider = Provider.of<NewsProvider>(context);
                        provider.setNews(news);

                        final _news = provider.news;

                        return _news.isEmpty
                            ? Center(
                                child: Text(
                                  'No News.',
                                  style: TextStyle(fontSize: 20),
                                ),
                              )
                            : Expanded(
                                child: RefreshIndicator(
                                  onRefresh: _onRefresh,
                                  child: ListView.builder(
                                    physics: BouncingScrollPhysics(
                                      parent: AlwaysScrollableScrollPhysics(),
                                    ),
                                    itemCount: _news.length,
                                    itemBuilder: (context, index) {
                                      final news = _news[index];

                                      return Card(
                                        child: ListTile(
                                          leading: Icon(Icons.article),
                                          title: Text(news.description),
                                          subtitle: Text(news.createdTime!
                                              .toIso8601String()),
                                        ),
                                      );
                                    },
                                  ),
                                ),
                              );
                      }
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
