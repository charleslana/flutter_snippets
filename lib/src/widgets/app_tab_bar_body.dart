import 'package:flutter/material.dart';
import 'package:flutter_snippets/src/utils/app_utils.dart';

class AppTabBarBody extends StatelessWidget {
  const AppTabBarBody({
    Key? key,
    this.widget,
    required this.data,
    required this.tabController,
  }) : super(key: key);

  final Widget? widget;
  final String data;
  final TabController tabController;

  @override
  Widget build(BuildContext context) {
    return TabBarView(
      physics: const NeverScrollableScrollPhysics(),
      controller: tabController,
      children: [
        Padding(
          padding: const EdgeInsets.all(10),
          child: widget ??
              Card(
                elevation: 0,
                child: SingleChildScrollView(
                  physics: const BouncingScrollPhysics(),
                  child: Text(
                    data,
                    style: const TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
        ),
        Padding(
          padding: const EdgeInsets.all(10),
          child: Card(
            elevation: 0,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: SingleChildScrollView(
                    physics: const BouncingScrollPhysics(),
                    child: Text(
                      data,
                      style: const TextStyle(
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Align(
                    alignment: Alignment.topRight,
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 20,
                      child: IconButton(
                        color: Colors.black,
                        icon: const Icon(
                          Icons.content_copy,
                        ),
                        onPressed: () => AppUtils.copyCode(context, data),
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
