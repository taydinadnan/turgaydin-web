import 'package:flutter/material.dart';
import 'package:turgaydin/utils/styles.dart';
import 'package:turgaydin/utils/taydin_colors.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: TaydinColors.backgroundGrey,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(
                vertical: MediaQuery.of(context).size.width * 0.05,
                horizontal: MediaQuery.of(context).size.width * 0.06),
            child: Container(
              decoration: BoxDecoration(
                  color: TaydinColors.backgorundColor,
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: const [
                    BoxShadow(
                      color: TaydinColors.backgroundGrey,
                      blurRadius: 20,
                      spreadRadius: 0.01,
                      offset: Offset(3, 3),
                    ),
                    BoxShadow(
                      color: TaydinColors.backgroundGrey,
                      blurRadius: 50,
                      spreadRadius: 0.01,
                      offset: Offset(3, 3),
                    ),
                  ]),
              height: MediaQuery.of(context).size.height * 0.5,
              width: MediaQuery.of(context).size.height * 0.4,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 25),
                    child: Container(
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: TaydinColors.backgorundColor,
                          boxShadow: [
                            BoxShadow(
                              color: TaydinColors.backgroundGrey,
                              blurRadius: 0,
                              spreadRadius: 0.01,
                              offset: Offset(1, 1),
                            ),
                            BoxShadow(
                              color: TaydinColors.backgroundGrey,
                              blurRadius: 10,
                              spreadRadius: 0.01,
                              offset: Offset(1, 1),
                            ),
                          ]),
                      child: CircleAvatar(
                        radius: MediaQuery.of(context).size.width * 0.09,
                        backgroundImage:
                            const AssetImage("assets/logo/profile.png"),
                      ),
                    ),
                  ),
                  Text(
                    "Adnan Turgay Aydin",
                    textAlign: TextAlign.center,
                    overflow: TextOverflow.ellipsis,
                    style: TaydinStyles.notoSans30.copyWith(
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    "Flutter Developer",
                    textAlign: TextAlign.center,
                    overflow: TextOverflow.ellipsis,
                    style: TaydinStyles.notoSans30.copyWith(
                      color: TaydinColors.flutterBlue,
                    ),
                  ),
                  const SizedBox(height: 25),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
