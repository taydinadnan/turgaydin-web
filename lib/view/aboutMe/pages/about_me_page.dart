import 'package:flutter/material.dart';
import 'package:tab_container/tab_container.dart';
import 'package:turgaydin/utils/responsive.dart';
import 'package:turgaydin/utils/styles.dart';
import 'package:turgaydin/view/aboutMe/widgets/education.dart';
import 'package:turgaydin/view/aboutMe/widgets/personal.dart';
import 'package:turgaydin/view/aboutMe/widgets/skills.dart';

class AboutMePage extends StatelessWidget {
  const AboutMePage({Key? key, required this.screenSize}) : super(key: key);

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
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 50.0,
                      ),
                      child: Align(
                        alignment: Alignment.center,
                        child: CircleAvatar(
                          foregroundImage: const AssetImage(
                            "assets/logo/pp2.jpg",
                          ),
                          radius: screenSize.height / 7,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(25.0),
                      child: SizedBox(
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
                          children: [
                            Padding(
                              padding:
                                  EdgeInsets.only(left: screenSize.width / 10),
                              child: const PersonalTab(),
                            ),
                            Padding(
                              padding:
                                  EdgeInsets.only(left: screenSize.width / 10),
                              child: const EducationTab(),
                            ),
                            Padding(
                              padding:
                                  EdgeInsets.only(left: screenSize.width / 10),
                              child: const SkillsTab(),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          )
        : Padding(
            padding: EdgeInsets.only(top: 50.0, left: screenSize.width / 4.5),
            child: Row(
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
                const SizedBox(width: 25),
                SizedBox(
                  width: screenSize.width / 3.5,
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
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: screenSize.width / 30),
                        child: const PersonalTab(),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: screenSize.width / 30),
                        child: const EducationTab(),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: screenSize.width / 30),
                        child: const SkillsTab(),
                      ),
                    ],
                  ),
                )
              ],
            ),
          );
  }
}
