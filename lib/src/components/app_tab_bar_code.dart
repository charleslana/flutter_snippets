import 'package:flutter/material.dart';
import 'package:flutter_snippets/src/utils/app_utils.dart';

class AppTabBarCode extends StatelessWidget {
  final Widget? widget;
  final String data;

  const AppTabBarCode({
    Key? key,
    this.widget,
    required this.data,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TabBarView(
      children: [
        Padding(
          padding: EdgeInsets.all(10.0),
          child: widget != null
              ? widget
              : Card(
                  elevation: 0,
                  child: SingleChildScrollView(
                    child: Text(
                      data,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
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
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.all(10),
                  child: Align(
                    alignment: Alignment.topRight,
                    child: CircleAvatar(
                      radius: 20,
                      backgroundColor: Colors.blue[400],
                      child: IconButton(
                        icon: Icon(
                          Icons.content_copy,
                          color: Colors.white,
                        ),
                        onPressed: () => AppUtils().copyCode(data, context),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: SingleChildScrollView(
                    child: Text(
                      data,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16.0,
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
