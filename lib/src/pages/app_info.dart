import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_snippets/src/api/firebase_api.dart';
import 'package:flutter_snippets/src/constants/app_constants.dart';
import 'package:flutter_snippets/src/models/news_model.dart';
import 'package:flutter_snippets/src/provider/news_provider.dart';
import 'package:flutter_snippets/src/utils/app_utils.dart';
import 'package:flutter_snippets/src/widgets/app_custom_bar.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';

class AppInfo extends StatefulWidget {
  const AppInfo({Key? key}) : super(key: key);

  @override
  _AppInfoState createState() => _AppInfoState();
}

class _AppInfoState extends State<AppInfo> {
  dynamic _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      AppUtils.toast(
          context, '${AppLocalizations.of(context)!.appInfoLaunchError} $url');
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppCustomBar(title: AppLocalizations.of(context)!.appInfoTitle),
        body: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Card(
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Wrap(
                      crossAxisAlignment: WrapCrossAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(5),
                          child: InkWell(
                            onTap: () => _launchURL(AppConstants.urlLinkedin),
                            child: const CircleAvatar(
                              child: FaIcon(FontAwesomeIcons.linkedin),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(5),
                          child: InkWell(
                            onTap: () => _launchURL(AppConstants.urlGithub),
                            child: const CircleAvatar(
                              child: FaIcon(FontAwesomeIcons.github),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(5),
                          child: InkWell(
                            onTap: () => _launchURL(AppConstants.urlGooglePlay),
                            child: const CircleAvatar(
                              child: FaIcon(FontAwesomeIcons.googlePlay),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const Divider(),
              Center(
                child: Text(
                  AppLocalizations.of(context)!.appNewsTitle,
                  style: Theme.of(context).textTheme.headline5,
                ),
              ),
              StreamBuilder<List<NewsModel>>(
                stream: FirebaseApi.readNews(),
                builder: (context, snapshot) {
                  switch (snapshot.connectionState) {
                    case ConnectionState.waiting:
                      return const Center(child: LinearProgressIndicator());
                    default:
                      if (snapshot.hasError) {
                        return Center(
                          child: Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: Text(
                              AppLocalizations.of(context)!.appNewsError,
                              style: const TextStyle(fontSize: 24),
                            ),
                          ),
                        );
                      } else {
                        final provider = Provider.of<NewsProvider>(context)
                          ..setNews(snapshot.data);
                        final data = provider.news;

                        return data.isEmpty
                            ? Padding(
                                padding: const EdgeInsets.only(top: 10),
                                child: Center(
                                  child: Text(
                                    AppLocalizations.of(context)!.appNewsNoNews,
                                    style: const TextStyle(fontSize: 20),
                                  ),
                                ),
                              )
                            : Expanded(
                                child: ListView.builder(
                                  physics: const BouncingScrollPhysics(
                                    parent: AlwaysScrollableScrollPhysics(),
                                  ),
                                  itemCount: data.length,
                                  itemBuilder: (context, index) {
                                    final news = data[index];
                                    final DateFormat _dateFormat = DateFormat(
                                        AppLocalizations.of(context)!
                                            .appNewsDateFormat);
                                    final String formattedDate =
                                        _dateFormat.format(news.createdTime!);

                                    return Card(
                                      child: ListTile(
                                        leading: const Icon(Icons.article),
                                        title: Text(news.description),
                                        subtitle: Text(formattedDate),
                                      ),
                                    );
                                  },
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
