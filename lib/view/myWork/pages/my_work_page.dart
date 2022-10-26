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
        ? SizedBox(
            width: screenSize.width / 1,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: CircleAvatar(
                        foregroundImage: const AssetImage(
                          "assets/logo/pp2.jpg",
                        ),
                        radius: screenSize.height / 7,
                      ),
                    ),
                    SizedBox(
                      width: screenSize.width / 1,
                      height: screenSize.height / 2.5,
                      child: TabContainer(
                        colors: <Color>[
                          Colors.red.shade200,
                          const Color(0xffa275e3),
                          const Color(0xff9aebed),
                        ],
                        tabs: const [
                          'Personal',
                          'Education',
                          'Skills',
                        ],
                        selectedTextStyle: TaydinStyles.openSansNormal
                            .copyWith(color: Colors.white, fontSize: 16),
                        unselectedTextStyle: TaydinStyles.openSansNormal
                            .copyWith(color: Colors.black, fontSize: 10),
                        children: const [
                          PersonalTab(),
                          EducationTab(),
                          SkillsTab(),
                        ],
                      ),
                    )
                  ],
                ),
              ],
            ),
          )
        : Padding(
            padding: EdgeInsets.only(top: 50.0, left: screenSize.width / 6),
            child: Row(
              children: [
                Container(
                  height: screenSize.height,
                  width: screenSize.width / 1.5,
                  padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      const Text("HEADER"),
                      Expanded(
                        child: ListView.builder(
                            itemCount:
                                SideBarNotifier.getInstance.projects.length,
                            itemBuilder: (context, index) {
                              return Padding(
                                padding: const EdgeInsets.only(bottom: 25.0),
                                child:
                                    SideBarNotifier.getInstance.projects[index],
                              );
                            }),
                      ),
                    ],
                  ),
                )
              ],
            ),
          );
  }
}
