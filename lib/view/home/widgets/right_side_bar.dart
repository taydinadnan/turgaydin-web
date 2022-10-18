import 'package:collapsible_sidebar/collapsible_sidebar.dart';
import 'package:flutter/material.dart';
import 'package:turgaydin/providers/sidebar/side_bar_notifier.dart';
import 'dart:math' as math show pi;

class RightSideBarPage extends StatefulWidget {
  const RightSideBarPage({super.key});

  @override
  _RightSideBarPageState createState() => _RightSideBarPageState();
}

class _RightSideBarPageState extends State<RightSideBarPage> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
            color: const Color(0xff2B3138),
            borderRadius: BorderRadius.circular(15)),
        height: 50,
        width: 150,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            GestureDetector(
              onTap: () {
                print("Clicked 1");
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset(
                  color: Colors.grey,
                  "assets/logo/linkedin.png",
                  height: 25,
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                print("Clicked 2");
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset(
                  color: Colors.grey,
                  "assets/logo/github.png",
                  height: 25,
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                print("Clicked 3");
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset(
                  "assets/logo/instagram.png",
                  color: Colors.grey,
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
