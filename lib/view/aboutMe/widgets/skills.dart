import 'package:flutter/material.dart';
import 'package:turgaydin/utils/styles.dart';

class SkillsTab extends StatelessWidget {
  const SkillsTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 25.0, left: 50, right: 25),
      child: FittedBox(
        child: Wrap(
          alignment: WrapAlignment.start,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "- Flutter framework",
                  style: TaydinStyles.openSansNormal.copyWith(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                      color: Colors.black.withOpacity(0.8)),
                ),
                Text(
                  "- Dart",
                  style: TaydinStyles.openSansNormal.copyWith(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                      color: Colors.black.withOpacity(0.8)),
                ),
                Text(
                  "- Firebase",
                  style: TaydinStyles.openSansNormal.copyWith(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                      color: Colors.black.withOpacity(0.8)),
                ),
                Text(
                  "- AWS Amplify",
                  style: TaydinStyles.openSansNormal.copyWith(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                      color: Colors.black.withOpacity(0.8)),
                ),
                Text(
                  "- UI & UX",
                  style: TaydinStyles.openSansNormal.copyWith(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                      color: Colors.black.withOpacity(0.8)),
                ),
              ],
            ),
            const SizedBox(width: 30),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "- SQL",
                  style: TaydinStyles.openSansNormal.copyWith(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                      color: Colors.black.withOpacity(0.8)),
                ),
                Text(
                  "- Agile methodology",
                  style: TaydinStyles.openSansNormal.copyWith(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                      color: Colors.black.withOpacity(0.8)),
                ),
                Text(
                  "- CI/CD services",
                  style: TaydinStyles.openSansNormal.copyWith(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                      color: Colors.black.withOpacity(0.8)),
                ),
                Text(
                  "- GIT",
                  style: TaydinStyles.openSansNormal.copyWith(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                      color: Colors.black.withOpacity(0.8)),
                ),
                Text(
                  "- Software development \n Life cycle",
                  style: TaydinStyles.openSansNormal.copyWith(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                      color: Colors.black.withOpacity(0.8)),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
