import 'package:flutter/material.dart';
import 'package:turgaydin/utils/responsive.dart';
import 'package:turgaydin/utils/styles.dart';

class WelcomeTiles extends StatelessWidget {
  WelcomeTiles({
    Key? key,
    required this.screenSize,
  }) : super(key: key);

  final Size screenSize;

  final List<String> assets = [
    'assets/logo/flutterIcon.png',
    'assets/logo/dartIcon.png',
    'assets/logo/firebaseIcon.png',
    'assets/logo/awsIcon.png',
    'assets/logo/gitIcon.png',
    'assets/logo/UIUXicon.png',
    'assets/logo/figmaIcon.png',
  ];

  final List<String> title = [
    'Flutter',
    'Dart',
    'Firebase',
    'AWS',
    'Github',
    'UI UX',
    'Figma',
  ];

  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget.isSmallScreen(context)
        ? Padding(
            padding: EdgeInsets.only(top: screenSize.height / 40),
            child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Container(
                  width: screenSize.width / 1,
                  decoration: BoxDecoration(
                    // color: Colors.green,
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(25.0),
                    child: Column(
                      children: [
                        RichText(
                          textAlign: TextAlign.justify,
                          text: TextSpan(
                            text: 'Hi, my name is\n',
                            style: TaydinStyles.openSansParagraph,
                            children: <TextSpan>[
                              TextSpan(
                                text: 'Adnan Turgay. \n',
                                style: TaydinStyles.notoSans20Bold.copyWith(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 30,
                                ),
                              ),
                              TextSpan(
                                text:
                                    "I'am a software engineer. I enjoy creating things that live on the internet ! My interest in mobile/web development started in 2020 when I decided to convert designs to applications - turning my passion into a profession. Fast-forward to today, and I have had the privilege of working for a good, product-based organization. I have strong UI and UX knowledge. Always open to learning and open to criticism. Keen to pursue a career in Flutter and Dart.",
                                style: TaydinStyles.poppins16Bold.copyWith(
                                  color: Colors.black.withOpacity(0.9),
                                  fontWeight: FontWeight.w500,
                                  fontSize: 20,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              SizedBox(width: screenSize.width / 15),
                              ...Iterable<int>.generate(assets.length).map(
                                (int pageIndex) => Row(
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Wrap(
                                          children: [
                                            SizedBox(
                                              height: screenSize.width / 3,
                                              width: screenSize.width / 3,
                                              child: ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(5.0),
                                                child: Image.asset(
                                                  assets[pageIndex],
                                                  fit: BoxFit.fill,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                    // SizedBox(width: screenSize.width / 30),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                )),
          )
        : Padding(
            padding: EdgeInsets.only(
              top: screenSize.height * 0.06,
              left: screenSize.width / 15,
              right: screenSize.width / 15,
            ),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 0),
                    child: SizedBox(
                        child: Padding(
                      padding: const EdgeInsets.all(80.0),
                      child: Column(
                        children: [
                          RichText(
                            textAlign: TextAlign.justify,
                            text: TextSpan(
                              text: 'Hi, my name is\n',
                              style: TaydinStyles.openSansParagraph.copyWith(
                                  color: const Color(0xFF623F54), fontSize: 16),
                              children: <TextSpan>[
                                TextSpan(
                                  text: 'Adnan Turgay. \n',
                                  style: TaydinStyles.openSansParagraph
                                      .copyWith(
                                          fontSize: 30, color: Colors.black),
                                ),
                                TextSpan(
                                  text:
                                      "I'am a software engineer. I enjoy creating things that live on the internet ! My interest in mobile/web development started in 2020 when I decided to convert designs to applications - turning my passion into a profession. Fast-forward to today, and I have had the privilege of working for a good, product-based organization. I have strong UI and UX knowledge. Always open to learning and open to criticism. Keen to pursue a career in Flutter and Dart.",
                                  style: TaydinStyles.openSansParagraph
                                      .copyWith(
                                          fontStyle: FontStyle.italic,
                                          color: Colors.black),
                                ),
                              ],
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              // SizedBox(width: screenSize.width * 0.00001),
                              ...Iterable<int>.generate(assets.length).map(
                                (int pageIndex) => Row(
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        SizedBox(
                                          height: screenSize.width / 11,
                                          width: screenSize.width / 11.1,
                                          child: ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(5.0),
                                            child: Image.asset(
                                              assets[pageIndex],
                                              fit: BoxFit.fill,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    // SizedBox(width: screenSize.width / 50),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          const Divider(
                            thickness: 1,
                          ),
                        ],
                      ),
                    )),
                  ),
                ],
              ),
            ),
          );
  }
}
