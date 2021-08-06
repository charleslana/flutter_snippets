import 'package:flutter/material.dart';
import 'package:flutter_snippets/src/utils/app_utils.dart';

class AppTabBarBody extends StatelessWidget {
  final Widget? widget;
  final String data;
  final TabController tabController;

  const AppTabBarBody({
    Key? key,
    this.widget,
    required this.data,
    required this.tabController,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TabBarView(
      physics: BouncingScrollPhysics(
        parent: AlwaysScrollableScrollPhysics(),
      ),
      controller: tabController,
      children: [
        Padding(
          padding: EdgeInsets.all(10.0),
          child: widget != null
              ? widget
              : Card(
                  elevation: 0,
                  child: SingleChildScrollView(
                    physics: BouncingScrollPhysics(
                      parent: AlwaysScrollableScrollPhysics(),
                    ),
                    child: Text(
                      data,
                      style: TextStyle(
                        fontSize: 16.0,
                      ),
                    ),
                  ),
                ),
        ),
        Padding(
          padding: EdgeInsets.all(10.0),
          child: Card(
            elevation: 0,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: SingleChildScrollView(
                    physics: BouncingScrollPhysics(
                      parent: AlwaysScrollableScrollPhysics(),
                    ),
                    child: Text(
                      data,
                      style: TextStyle(
                        fontSize: 16.0,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(10),
                  child: Align(
                    alignment: Alignment.topRight,
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 20,
                      child: IconButton(
                        color: Colors.black,
                        icon: Icon(
                          Icons.content_copy,
                        ),
                        onPressed: () => AppUtils().copyCode(data, context),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
