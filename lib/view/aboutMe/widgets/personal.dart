import 'package:flutter/material.dart';
import 'package:turgaydin/utils/styles.dart';

class PersonalTab extends StatelessWidget {
  const PersonalTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Adnan Turgay Aydin",
              style: TaydinStyles.poppins16Bold.copyWith(fontSize: 20),
              overflow: TextOverflow.ellipsis,
            ),
            Wrap(
              children: const [
                Text(
                  "Nationality :",
                  style: TaydinStyles.poppins16Bold,
                  overflow: TextOverflow.ellipsis,
                ),
                Text(
                  " Turkey",
                  style: TaydinStyles.poppins16SemiBold,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
            Wrap(
              children: const [
                Text(
                  "Age: ",
                  style: TaydinStyles.poppins16Bold,
                  overflow: TextOverflow.ellipsis,
                ),
                Text(
                  "26.04.1997",
                  style: TaydinStyles.poppins16SemiBold,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
            Wrap(
              children: const [
                Text(
                  "Profession : ",
                  style: TaydinStyles.poppins16Bold,
                  overflow: TextOverflow.ellipsis,
                ),
                Text(
                  "Flutter Developer",
                  style: TaydinStyles.poppins16SemiBold,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
            Wrap(
              children: const [
                Text(
                  "Location: ",
                  style: TaydinStyles.poppins16Bold,
                  overflow: TextOverflow.ellipsis,
                ),
                Text(
                  "Sarajevo, BiH",
                  style: TaydinStyles.poppins16SemiBold,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ],
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              "Languages:",
              style: TaydinStyles.poppins16Bold,
              overflow: TextOverflow.ellipsis,
            ),
            Text(
              "Turkish",
              style: TaydinStyles.poppins16SemiBold,
              overflow: TextOverflow.ellipsis,
            ),
            Text(
              "English",
              style: TaydinStyles.poppins16SemiBold,
              overflow: TextOverflow.ellipsis,
            ),
            Text(
              "Bosnian",
              style: TaydinStyles.poppins16SemiBold,
              overflow: TextOverflow.ellipsis,
            ),
          ],
        ),
      ],
    );
  }
}
