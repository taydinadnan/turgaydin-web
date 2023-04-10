// ignore: avoid_web_libraries_in_flutter
import 'dart:js' as js;

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:turgaydin/providers/sidebar/side_bar_notifier.dart';
import 'package:turgaydin/utils/on_hover_button.dart';
import 'package:turgaydin/utils/responsive.dart';
import 'package:turgaydin/utils/styles.dart';
import 'package:turgaydin/utils/taydin_colors.dart';

class ResumePage extends StatelessWidget {
  const ResumePage({Key? key, required this.screenSize}) : super(key: key);

  final Size screenSize;

  @override
  Widget build(BuildContext context) {
    return Consumer<SideBarNotifier>(
      builder: (context, plansNotifier, child) => ResponsiveWidget
              .isSmallScreen(context)
          ? Padding(
              padding: EdgeInsets.only(top: 50.0, left: screenSize.width / 30),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  OnHoverButton(
                    child: GestureDetector(
                      onTap: () {
                        js.context.callMethod('open', [
                          "https://drive.google.com/file/d/1OuqESavpuYYnYeAklgfRublV53_mpOwr/view?usp=sharing"
                        ]);
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: screenSize.width / 2.2,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(16),
                                    color: TaydinColors.backgroundGrey,
                                  ),
                                  child: const Padding(
                                    padding: EdgeInsets.all(20.0),
                                    child: Text(
                                      "DOWNLOAD",
                                      style: TaydinStyles.poppins28Bold,
                                    ),
                                  ),
                                ),
                                const Padding(
                                  padding:
                                      EdgeInsets.only(bottom: 40.0, left: 10),
                                  child: Icon(Icons.info),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: 25),
                          SideBarNotifier.getInstance.isHovered
                              ? Container(
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(8),
                                      border: Border.all(color: Colors.white)),
                                  width: 400,
                                  height: 90,
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 25.0),
                                    child: Center(
                                      child: Text(
                                        "https://drive.google.com/file/d/1OuqESavpuYYnYeAklgfRublV53_mpOwr/view?usp=sharing",
                                        style: TaydinStyles.notoSans20Bold
                                            .copyWith(
                                          color: Colors.black,
                                          fontWeight: FontWeight.normal,
                                          fontSize: 10,
                                        ),
                                        textAlign: TextAlign.start,
                                      ),
                                    ),
                                  ),
                                )
                              : const Center()
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 30),
                  Align(
                    alignment: Alignment.center,
                    child: Image.asset(
                      "assets/logo/Adnan.jpg",
                      height: screenSize.height / 1.5,
                      width: screenSize.width / 1.5,
                    ),
                  ),
                ],
              ),
            )
          : Padding(
              padding: EdgeInsets.only(top: 50.0, left: screenSize.width / 30),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  OnHoverButton(
                    child: GestureDetector(
                      onTap: () {
                        js.context.callMethod('open', [
                          "https://drive.google.com/file/d/1OuqESavpuYYnYeAklgfRublV53_mpOwr/view?usp=sharing"
                        ]);
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(16),
                                  color: TaydinColors.backgroundGrey,
                                ),
                                child: const Padding(
                                  padding: EdgeInsets.all(20.0),
                                  child: Text(
                                    "DOWNLOAD",
                                    style: TaydinStyles.poppins28Bold,
                                  ),
                                ),
                              ),
                              const Padding(
                                padding:
                                    EdgeInsets.only(bottom: 40.0, left: 10),
                                child: Icon(Icons.info),
                              ),
                            ],
                          ),
                          const SizedBox(height: 25),
                          SideBarNotifier.getInstance.isHovered
                              ? Container(
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(8),
                                      border: Border.all(color: Colors.white)),
                                  width: 400,
                                  height: 90,
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 25.0),
                                    child: Center(
                                      child: Text(
                                        "https://drive.google.com/file/d/1OuqESavpuYYnYeAklgfRublV53_mpOwr/view?usp=sharing",
                                        style: TaydinStyles.notoSans20Bold
                                            .copyWith(
                                          color: Colors.black,
                                          fontWeight: FontWeight.normal,
                                          fontSize: 10,
                                        ),
                                        textAlign: TextAlign.start,
                                      ),
                                    ),
                                  ),
                                )
                              : const Center()
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 30),
                  Align(
                    alignment: Alignment.center,
                    child: Image.asset(
                      "assets/logo/Adnan.jpg",
                      height: screenSize.height / 1.0,
                      width: screenSize.width / 1.0,
                    ),
                  ),
                ],
              ),
            ),
    );
  }
}
