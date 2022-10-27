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
    return Center(
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
                    color: Colors.red.shade200,
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
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Title: ",
                                style: TaydinStyles.openSansParagraph.copyWith(
                                    fontSize: 15, color: Colors.black),
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
                                style: TaydinStyles.openSansParagraph.copyWith(
                                    fontSize: 15, color: Colors.black),
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
                          radius: 30,
                          backgroundColor: Colors.red.shade200,
                          backgroundImage: AssetImage("assets/logo/github.png"),
                        )
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
    );
  }
}
