import 'package:flutter/material.dart';
import 'package:turgaydin/utils/styles.dart';
import 'package:turgaydin/utils/taydin_colors.dart';

class ProjectsWidget extends StatelessWidget {
  const ProjectsWidget(
      {Key? key,
      required this.projectName,
      required this.description,
      required this.image})
      : super(key: key);

  final String projectName;
  final String description;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: TaydinColors.backgorundColor,
      ),
      height: 200,
      width: 500,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: Image.asset(image)),
          Padding(
            padding: const EdgeInsets.only(left: 50.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Title: ",
                  style: TaydinStyles.openSansParagraph
                      .copyWith(fontSize: 25, color: Colors.white),
                ),
                Text(
                  projectName,
                  style: TaydinStyles.openSansNormal.copyWith(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                      color: Colors.white.withOpacity(0.8)),
                ),
                const SizedBox(width: 10),
                Text(
                  "Description: ",
                  style: TaydinStyles.openSansParagraph
                      .copyWith(fontSize: 25, color: Colors.black),
                ),
                Text(
                  description,
                  style: TaydinStyles.openSansNormal.copyWith(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                      color: Colors.white.withOpacity(0.8)),
                ),
              ],
            ),
          ),
          CircleAvatar(
            radius: 20,
            backgroundColor: Colors.white,
            backgroundImage: AssetImage("assets/logo/github.png"),
          )
        ],
      ),
    );
  }
}
