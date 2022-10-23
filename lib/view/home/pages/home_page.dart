import 'package:flutter/material.dart';
import 'package:turgaydin/utils/taydin_colors.dart';
import 'package:turgaydin/view/home/widgets/homepage_widgets/about_me_card.dart';
import 'package:turgaydin/view/home/widgets/homepage_widgets/contact_card.dart';
import 'package:turgaydin/view/home/widgets/homepage_widgets/my_work_card.dart';
import 'package:turgaydin/view/home/widgets/homepage_widgets/profile_widget.dart';
import 'package:turgaydin/view/home/widgets/homepage_widgets/resume_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          color: TaydinColors.backgroundGrey,
          child: Image.asset(
            "assets/logo/bgImage.png",
            fit: BoxFit.cover,
            color: TaydinColors.flutterBlue,
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 50.0),
                child: ProfileWidget(),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 50.0),
                child: Column(
                  children: [
                    HoverCardAboutMe(
                      context: "About Me",
                      onPressed: () {},
                    ),
                    HoverCardMyWork(
                      context: "My Work",
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 50.0, top: 50),
                child: Column(
                  children: [
                    HoverCardResume(
                      context: "Resume",
                      onPressed: () {},
                    ),
                    HoverCardContact(
                      context: "Contact",
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
