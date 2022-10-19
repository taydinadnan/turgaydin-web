import 'package:flutter/material.dart';

import 'package:turgaydin/utils/taydin_colors.dart';

class RightSideBarPage extends StatefulWidget {
  const RightSideBarPage({super.key});

  @override
  RightSideBarPageState createState() => RightSideBarPageState();
}

class RightSideBarPageState extends State<RightSideBarPage> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
            color: TaydinColors.backgorundColor,
            borderRadius: BorderRadius.circular(15)),
        height: 50,
        width: 150,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {},
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset(
                  color: TaydinColors.socialIconGrey,
                  "assets/logo/linkedin.png",
                  height: 25,
                ),
              ),
            ),
            GestureDetector(
              onTap: () {},
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset(
                  color: TaydinColors.socialIconGrey,
                  "assets/logo/github.png",
                  height: 25,
                ),
              ),
            ),
            GestureDetector(
              onTap: () {},
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset(
                  "assets/logo/instagram.png",
                  color: TaydinColors.socialIconGrey,
                  height: 25,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
