import 'dart:js' as js;

import 'package:flutter/material.dart';
import 'package:turgaydin/providers/sidebar/side_bar_notifier.dart';
import 'package:turgaydin/utils/on_hover_button.dart';
import 'package:turgaydin/utils/responsive.dart';

class MyWorkPage extends StatelessWidget {
  const MyWorkPage({Key? key, required this.screenSize}) : super(key: key);

  final Size screenSize;

  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget.isSmallScreen(context)
        ? Padding(
            padding: EdgeInsets.only(top: 25.0, left: screenSize.width / 15),
            child: Row(
              children: [
                Container(
                  height: screenSize.height,
                  width: screenSize.width / 1.2,
                  padding: const EdgeInsets.fromLTRB(0, 30, 0, 0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Expanded(
                        child: ListView.builder(
                            itemCount:
                                SideBarNotifier.getInstance.projects.length,
                            itemBuilder: (context, index) {
                              return FittedBox(
                                child: Padding(
                                  padding: const EdgeInsets.only(bottom: 25.0),
                                  child: GestureDetector(
                                    onTap: () {
                                      if (index == 0) {
                                        print("index 0");
                                      } else if (index == 1) {
                                        print("index 1");
                                      }
                                    },
                                    child: SideBarNotifier
                                        .getInstance.projects[index],
                                  ),
                                ),
                              );
                            }),
                      ),
                    ],
                  ),
                )
              ],
            ),
          )
        : FittedBox(
            child: Row(
              children: [
                Container(
                  height: screenSize.height * 1.4,
                  width: screenSize.width / 2.4,
                  // padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Expanded(
                        child: ListView.builder(
                            shrinkWrap: true,
                            itemCount:
                                SideBarNotifier.getInstance.projects.length,
                            itemBuilder: (context, index) {
                              return FittedBox(
                                child: Padding(
                                  padding: const EdgeInsets.only(bottom: 50.0),
                                  child: GestureDetector(
                                    onTap: () {
                                      if (index == 0) {
                                        print("index 0");
                                        js.context.callMethod('open', [
                                          "https://github.com/taydinadnan/BringApp-Delivery-service-app"
                                        ]);
                                      } else if (index == 1) {
                                        print("index 1");
                                        js.context.callMethod('open', [
                                          "https://github.com/taydinadnan/imparatarot"
                                        ]);
                                      } else if (index == 2) {
                                        print("index 1");
                                        js.context.callMethod('open', [
                                          "https://github.com/taydinadnan/grisoftware-shortly-challange"
                                        ]);
                                      } else if (index == 3) {
                                        print("index 1");
                                        js.context.callMethod('open', [
                                          "https://github.com/taydinadnan/turgaydin-web"
                                        ]);
                                      }
                                    },
                                    child: SideBarNotifier
                                        .getInstance.projects[index],
                                  ),
                                ),
                              );
                            }),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
  }
}
