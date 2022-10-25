import 'package:flutter/material.dart';
import 'package:turgaydin/utils/styles.dart';

class EducationTab extends StatelessWidget {
  const EducationTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
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
                  style: TaydinStyles.poppins16Bold,
                  overflow: TextOverflow.ellipsis,
                ),
                Text(
                  " 2020 - 2023",
                  style: TaydinStyles.poppins16SemiBold.copyWith(fontSize: 15),
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
            Text(
              " Information Technology",
              style: TaydinStyles.poppins16SemiBold.copyWith(fontSize: 15),
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
                  style: TaydinStyles.poppins16Bold,
                  overflow: TextOverflow.ellipsis,
                ),
                Text(
                  " 2021",
                  style: TaydinStyles.poppins16SemiBold.copyWith(fontSize: 15),
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
            Text(
              " Udemy - Created by Maximillian Schwarzmuller",
              style: TaydinStyles.poppins16SemiBold.copyWith(fontSize: 15),
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
                const Text(
                  "-UI - UX",
                  style: TaydinStyles.poppins16Bold,
                  overflow: TextOverflow.ellipsis,
                ),
                Text(
                  " 2021",
                  style: TaydinStyles.poppins16SemiBold.copyWith(fontSize: 15),
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
            Text(
              " Created by Google",
              style: TaydinStyles.poppins16SemiBold.copyWith(fontSize: 15),
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
                const Text(
                  "-Tech387 - Intern software engineer",
                  style: TaydinStyles.poppins16Bold,
                  overflow: TextOverflow.ellipsis,
                ),
                Text(
                  "2022",
                  style: TaydinStyles.poppins16SemiBold.copyWith(fontSize: 15),
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
            Text(
              "Tech387 - Flutter Developer",
              style: TaydinStyles.poppins16SemiBold.copyWith(fontSize: 15),
              overflow: TextOverflow.ellipsis,
            ),
          ],
        ),
      ],
    );
  }
}
