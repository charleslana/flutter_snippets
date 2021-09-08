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
import 'package:package_info_plus/package_info_plus.dart';
import 'package:provider/provider.dart';
import 'package:readmore/readmore.dart';
import 'package:url_launcher/url_launcher.dart';

class AppInfo extends StatefulWidget {
  const AppInfo({Key? key}) : super(key: key);

  @override
  _AppInfoState createState() => _AppInfoState();
}

class _AppInfoState extends State<AppInfo> {
  String packageVersion = '';
  String packageName = '';

  dynamic _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      AppUtils.toast(
          context, '${AppLocalizations.of(context)!.appInfoLaunchError} $url');
    }
  }

  Future<void> init() async {
    final PackageInfo packageInfo = await PackageInfo.fromPlatform();
    setState(() {
      packageVersion = packageInfo.version;
      packageName = packageInfo.appName;
    });
  }

  @override
  void initState() {
    init();
    super.initState();
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
              Center(
                child: Text(
                  AppLocalizations.of(context)!.appInfoFollowMe,
                  style: Theme.of(context).textTheme.headline5,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
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
              ElevatedButton(
                onPressed: () {
                  showAboutDialog(
                    context: context,
                    applicationIcon: Image.asset(
                      'assets/images/icon_flutter_snippets.png',
                      width: 32,
                    ),
                    applicationName: packageName,
                    applicationVersion: packageVersion,
                    applicationLegalese: '©${DateTime.now().year} $packageName',
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 15),
                        child: Text(
                            '$packageName ${AppLocalizations.of(context)!.appInfoAboutDescription}'),
                      ),
                    ],
                  );
                },
                child: Text(
                    '${AppLocalizations.of(context)!.appInfoAbout} $packageName'),
              ),
              Center(
                child: Text(
                  AppLocalizations.of(context)!.appNewsTitle,
                  style: Theme.of(context).textTheme.headline5,
                ),
              ),
              StreamBuilder<List<NewsModel>>(
                stream: readNews(),
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
                                  physics: const BouncingScrollPhysics(),
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
                                        title: ReadMoreText(
                                          news.description!,
                                          trimLines: 5,
                                          delimiter: '',
                                          colorClickableText: Colors.indigo,
                                          trimMode: TrimMode.Line,
                                          trimCollapsedText:
                                              '...${AppLocalizations.of(context)!.appNewsShowMore}',
                                          trimExpandedText:
                                              ' ${AppLocalizations.of(context)!.appNewsShowLess}',
                                          moreStyle: const TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold,
                                          ),
                                          style: Theme.of(context)
                                              .textTheme
                                              .subtitle1,
                                        ),
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
