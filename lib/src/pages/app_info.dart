import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_snippets/src/components/app_custom_bar.dart';
import 'package:flutter_snippets/src/constants/app_constants.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class AppInfo extends StatefulWidget {
  const AppInfo({Key? key}) : super(key: key);

  @override
  _AppInfoState createState() => _AppInfoState();
}

class _AppInfoState extends State<AppInfo> {
  bool isLoading = true;

  Future<void> _getFutureData() async =>
      await Future.delayed(Duration(seconds: 3), () {
        setState(() {
          isLoading = false;
        });
      });

  Future<void> _onRefresh() async {
    setState(() {
      isLoading = true;
    });
  }

  void _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  void initState() {
    super.initState();
    _getFutureData();
  }

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
              isLoading
                  ? LinearProgressIndicator()
                  : Expanded(
                      child: RefreshIndicator(
                        onRefresh: _onRefresh,
                        child: ListView.builder(
                          physics: BouncingScrollPhysics(
                            parent: AlwaysScrollableScrollPhysics(),
                          ),
                          itemCount: 6,
                          itemBuilder: (context, i) {
                            return Card(
                              child: ListTile(
                                leading: Icon(Icons.article),
                                title: Text('$lorenIpsum ' '$i'),
                                subtitle: Text('05/08/2021'),
                              ),
                            );
                          },
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

final lorenIpsum = """
Lorem Ipsum is simply dummy text of the printing and typesetting industry.
Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,
when an unknown printer took a galley of type and scrambled it to make a type specimen book.
It has survived not only five centuries, but also the leap into electronic typesetting,
remaining essentially unchanged. It was popularised in the 1960s with the release of
Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing
software like Aldus PageMaker including versions of Lorem Ipsum.
""";
