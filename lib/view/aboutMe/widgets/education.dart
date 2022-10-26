import 'package:flutter/material.dart';
import 'package:turgaydin/utils/styles.dart';

class EducationTab extends StatelessWidget {
  const EducationTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          const EdgeInsets.only(left: 25.0, right: 25, top: 25, bottom: 25),
      child: FittedBox(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Wrap(
                  children: [
                    Text(
                      "-Visoka škola 'CEPS' Kiseljak",
                      style: TaydinStyles.openSansNormal.copyWith(
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                          color: Colors.black.withOpacity(0.5)),
                      overflow: TextOverflow.ellipsis,
                    ),
                    Text(
                      " 2020 - 2023",
                      style: TaydinStyles.openSansNormal.copyWith(
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                          color: Colors.black.withOpacity(0.5)),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
                Text(
                  " Information Technology",
                  style: TaydinStyles.openSansNormal.copyWith(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                      color: Colors.white.withOpacity(0.8)),
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
            const Divider(),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Wrap(
                  children: [
                    Text(
                      "-Flutter & Dart",
                      style: TaydinStyles.openSansNormal.copyWith(
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                          color: Colors.black.withOpacity(0.5)),
                      overflow: TextOverflow.ellipsis,
                    ),
                    Text(
                      " 2021",
                      style: TaydinStyles.openSansNormal.copyWith(
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                          color: Colors.black.withOpacity(0.5)),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
                Text(
                  " Udemy - Created by Maximillian Schwarzmuller",
                  style: TaydinStyles.openSansNormal.copyWith(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                      color: Colors.white.withOpacity(0.8)),
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
            const Divider(),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Wrap(
                  children: [
                    Text(
                      "-UI - UX",
                      style: TaydinStyles.openSansNormal.copyWith(
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                          color: Colors.black.withOpacity(0.5)),
                      overflow: TextOverflow.ellipsis,
                    ),
                    Text(
                      " 2021",
                      style: TaydinStyles.openSansNormal.copyWith(
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                          color: Colors.black.withOpacity(0.5)),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
                Text(
                  " Created by Google",
                  style: TaydinStyles.openSansNormal.copyWith(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                      color: Colors.white.withOpacity(0.8)),
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
            const Divider(),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Wrap(
                  children: [
                    Text(
                      "-Tech387 - Intern software engineer ",
                      style: TaydinStyles.openSansNormal.copyWith(
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                          color: Colors.black.withOpacity(0.5)),
                      overflow: TextOverflow.ellipsis,
                    ),
                    Text(
                      "2022",
                      style: TaydinStyles.openSansNormal.copyWith(
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                          color: Colors.black.withOpacity(0.5)),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
                Text(
                  "Tech387 - Flutter Developer",
                  style: TaydinStyles.openSansNormal.copyWith(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                      color: Colors.white.withOpacity(0.8)),
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
