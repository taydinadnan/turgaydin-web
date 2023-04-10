// ignore: avoid_web_libraries_in_flutter
import 'dart:js' as js;

import 'package:flutter/material.dart';

import 'package:turgaydin/providers/sidebar/side_bar_notifier.dart';
import 'package:turgaydin/utils/styles.dart';

class ProjectDetails extends StatelessWidget {
  const ProjectDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(
            width: 0.5,
            color: Colors.red.shade100.withOpacity(0.7),
          ),
          borderRadius: BorderRadius.circular(16),
          color: Colors.red.shade100.withOpacity(0.3),
          boxShadow: [
            BoxShadow(
              color: Colors.red.shade200.withOpacity(0.5),
              spreadRadius: 5,
              blurRadius: 7,
              offset: const Offset(0, 3), // changes position of shadow
            ),
          ]),
      child: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          children: [
            Padding(
                padding: const EdgeInsets.only(left: 500),
                child: GestureDetector(
                    onTap: () {
                      SideBarNotifier.getInstance.setIsDescription1(false);

                      SideBarNotifier.getInstance.setIsDescription1(false);
                    },
                    child: const Icon(
                      Icons.close,
                      size: 30,
                    ))),
            Text(
              "Project Details",
              style: TaydinStyles.notoSans20Bold.copyWith(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 30,
              ),
            ),
            const SizedBox(height: 20),
            CircleAvatar(
              backgroundImage: AssetImage(
                SideBarNotifier.getInstance.isDescription1
                    ? SideBarNotifier.getInstance.projects[0].image
                    : SideBarNotifier.getInstance.isDescription2
                        ? SideBarNotifier.getInstance.projects[1].image
                        : SideBarNotifier.getInstance.isDescription3
                            ? SideBarNotifier.getInstance.projects[2].image
                            : SideBarNotifier.getInstance.isDescription4
                                ? SideBarNotifier.getInstance.projects[3].image
                                : "",
              ),
              radius: 70,
            ),
            const Divider(
              height: 3,
            ),
            Text(
              SideBarNotifier.getInstance.isDescription1
                  ? SideBarNotifier.getInstance.projects[0].projectName
                  : SideBarNotifier.getInstance.isDescription2
                      ? SideBarNotifier.getInstance.projects[1].projectName
                      : SideBarNotifier.getInstance.isDescription3
                          ? SideBarNotifier.getInstance.projects[2].projectName
                          : SideBarNotifier.getInstance.isDescription4
                              ? SideBarNotifier
                                  .getInstance.projects[3].projectName
                              : "",
              style: TaydinStyles.poppins16Bold.copyWith(
                color: Colors.white,
                fontWeight: FontWeight.w500,
                fontSize: 30,
              ),
            ),
            Text(
              SideBarNotifier.getInstance.desriptionText,
              style: TaydinStyles.poppins16Bold.copyWith(
                color: Colors.black.withOpacity(0.9),
                fontWeight: FontWeight.w500,
                fontSize: 20,
              ),
            ),
            const SizedBox(height: 20),
            GestureDetector(
              onTap: () {
                js.context.callMethod('open', [
                  SideBarNotifier.getInstance.isDescription1
                      ? SideBarNotifier.getInstance.projects[0].projectLink
                      : SideBarNotifier.getInstance.isDescription2
                          ? SideBarNotifier.getInstance.projects[1].projectLink
                          : SideBarNotifier.getInstance.isDescription3
                              ? SideBarNotifier
                                  .getInstance.projects[2].projectLink
                              : SideBarNotifier.getInstance.isDescription4
                                  ? SideBarNotifier
                                      .getInstance.projects[3].projectLink
                                  : ""
                ]);
              },
              child: CircleAvatar(
                radius: 30,
                backgroundColor: Colors.red.shade100.withOpacity(0.7),
                backgroundImage: const AssetImage("assets/logo/github.png"),
              ),
            )
          ],
        ),
      ),
    );
  }
}
