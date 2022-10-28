import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:turgaydin/providers/sidebar/side_bar_notifier.dart';
import 'package:turgaydin/utils/responsive.dart';
import 'package:turgaydin/utils/styles.dart';
import 'package:turgaydin/utils/taydin_colors.dart';

import 'dart:js' as js;

class ProjectsWidget extends StatelessWidget {
  const ProjectsWidget(
      {Key? key,
      required this.projectName,
      required this.description,
      required this.image,
      required this.projectLink})
      : super(key: key);

  final String projectName;
  final String description;
  final String image;
  final String projectLink;

  @override
  Widget build(BuildContext context) {
    return Consumer<SideBarNotifier>(
        builder: (context, plansNotifier, child) => Center(
              child: Container(
                width: 600,
                height: 200,
                child: Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 20.0, left: 70),
                      child: Align(
                        alignment: Alignment.center,
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            color: Colors.red.shade100.withOpacity(0.7),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(25.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 120.0),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Title: ",
                                        style: TaydinStyles.openSansParagraph
                                            .copyWith(
                                                fontSize: 15,
                                                color: Colors.black),
                                      ),
                                      Text(
                                        projectName,
                                        style: TaydinStyles.openSansNormal
                                            .copyWith(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 25,
                                                color: Colors.white
                                                    .withOpacity(0.8)),
                                      ),
                                      const SizedBox(width: 10),
                                      Text(
                                        "Description: ",
                                        style: TaydinStyles.openSansParagraph
                                            .copyWith(
                                                fontSize: 15,
                                                color: Colors.black),
                                      ),
                                      Text(
                                        description,
                                        style: TaydinStyles.openSansNormal
                                            .copyWith(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 25,
                                                color: Colors.white
                                                    .withOpacity(0.8)),
                                      ),
                                    ],
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    ResponsiveWidget.isSmallScreen(context)
                                        ? js.context.callMethod('open', [
                                            SideBarNotifier
                                                    .getInstance.isDescription1
                                                ? SideBarNotifier.getInstance
                                                    .projects[0].projectLink
                                                : SideBarNotifier.getInstance
                                                        .isDescription2
                                                    ? SideBarNotifier
                                                        .getInstance
                                                        .projects[1]
                                                        .projectLink
                                                    : SideBarNotifier
                                                            .getInstance
                                                            .isDescription3
                                                        ? SideBarNotifier
                                                            .getInstance
                                                            .projects[2]
                                                            .projectLink
                                                        : SideBarNotifier
                                                                .getInstance
                                                                .isDescription4
                                                            ? SideBarNotifier
                                                                .getInstance
                                                                .projects[3]
                                                                .projectLink
                                                            : ""
                                          ])
                                        : null;
                                  },
                                  child: SideBarNotifier
                                              .getInstance.isDescription1 ||
                                          SideBarNotifier
                                              .getInstance.isDescription2 ||
                                          SideBarNotifier
                                              .getInstance.isDescription3 ||
                                          SideBarNotifier
                                              .getInstance.isDescription4
                                      ? Icon(Icons.arrow_circle_left)
                                      : Icon(Icons.arrow_circle_right),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      child: CircleAvatar(
                        backgroundImage: AssetImage(image),
                        radius: 90,
                      ),

                      // child: ClipRRect(
                      //     borderRadius: BorderRadius.circular(60),
                      //     child: Image.asset(
                      //       image,
                      //     )),
                    ),
                  ],
                ),
              ),
            ));
  }
}
