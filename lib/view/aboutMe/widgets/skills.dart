import 'package:flutter/material.dart';
import 'package:turgaydin/utils/styles.dart';

class SkillsTab extends StatelessWidget {
  const SkillsTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 80.0),
      child: Wrap(
        alignment: WrapAlignment.start,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "- Flutter framework",
                style: TaydinStyles.poppins16Bold.copyWith(fontSize: 15),
              ),
              Text(
                "- Dart",
                style: TaydinStyles.poppins16Bold.copyWith(fontSize: 15),
              ),
              Text(
                "- Firebase",
                style: TaydinStyles.poppins16Bold.copyWith(fontSize: 15),
              ),
              Text(
                "- AWS Amplify",
                style: TaydinStyles.poppins16Bold.copyWith(fontSize: 15),
              ),
              Text(
                "- UI & UX",
                style: TaydinStyles.poppins16Bold.copyWith(fontSize: 15),
              ),
            ],
          ),
          const SizedBox(width: 10),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "- SQL",
                style: TaydinStyles.poppins16Bold.copyWith(fontSize: 15),
              ),
              Text(
                "- Agile methodology",
                style: TaydinStyles.poppins16Bold.copyWith(fontSize: 15),
              ),
              Text(
                "- CI/CD services",
                style: TaydinStyles.poppins16Bold.copyWith(fontSize: 15),
              ),
              Text(
                "- GIT",
                style: TaydinStyles.poppins16Bold.copyWith(fontSize: 15),
              ),
              Text(
                "- Software development \n Life cycle",
                style: TaydinStyles.poppins16Bold.copyWith(fontSize: 15),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
