import 'package:flutter/material.dart';
import 'package:tab_container/tab_container.dart';
import 'package:turgaydin/providers/sidebar/side_bar_notifier.dart';
import 'package:turgaydin/utils/responsive.dart';
import 'package:turgaydin/utils/styles.dart';
import 'package:turgaydin/view/aboutMe/widgets/education.dart';
import 'package:turgaydin/view/aboutMe/widgets/personal.dart';
import 'package:turgaydin/view/aboutMe/widgets/skills.dart';
import 'package:turgaydin/view/myWork/widgets/projects.dart';

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
                                  child: SideBarNotifier
                                      .getInstance.projects[index],
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
        : Padding(
            padding: EdgeInsets.only(top: 50.0, left: screenSize.width / 6),
            child: Row(
              children: [
                FittedBox(
                  child: Container(
                    height: screenSize.height * 2,
                    width: screenSize.width / 1.5,
                    // padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Expanded(
                          child: ListView.builder(
                              shrinkWrap: true,
                              itemCount:
                                  SideBarNotifier.getInstance.projects.length,
                              itemBuilder: (context, index) {
                                return FittedBox(
                                  child: Padding(
                                    padding:
                                        const EdgeInsets.only(bottom: 50.0),
                                    child: SideBarNotifier
                                        .getInstance.projects[index],
                                  ),
                                );
                              }),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          );
  }
}
