// ignore: avoid_web_libraries_in_flutter, unused_import
import 'dart:js' as js;

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:turgaydin/providers/sidebar/side_bar_notifier.dart';
import 'package:turgaydin/utils/on_hover_button.dart';

import 'package:turgaydin/utils/responsive.dart';
import 'package:turgaydin/utils/styles.dart';

class DestinationCarousel extends StatefulWidget {
  const DestinationCarousel({super.key});

  @override
  DestinationCarouselState createState() => DestinationCarouselState();
}

class DestinationCarouselState extends State<DestinationCarousel> {
  final String imagePath = 'assets/images/';

  final CarouselController _controller = CarouselController();

  final List _isHovering = [false, false, false, false, false, false, false];
  final List _isSelected = [true, false, false, false, false, false, false];

  int _current = 0;

  final List<String> images = [
    'assets/logo/bring 1.png',
    'assets/logo/shortly 3.png',
    'assets/logo/tarot 3.png',
  ];

  final List<String> places = [
    'Bring App',
    'Shortly App',
    'Tarot App',
  ];

  final List<String> links = [
    'https://github.com/taydinadnan/BringApp-Delivery-service-app',
    'https://github.com/taydinadnan/grisoftware-shortly-challange',
    'https://github.com/taydinadnan/imparatarot',
  ];

  List<Widget> generateImageTiles(screenSize) {
    return images
        .map(
          (element) => ClipRRect(
            borderRadius: BorderRadius.circular(8.0),
            child: Image.asset(
              element,
              fit: BoxFit.cover,
            ),
          ),
        )
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    var imageSliders = generateImageTiles(screenSize);

    return Consumer<SideBarNotifier>(
        builder: (context, plansNotifier, child) => Stack(
              children: [
                CarouselSlider(
                  items: imageSliders,
                  options: CarouselOptions(
                      enlargeCenterPage: true,
                      aspectRatio: 18 / 8,
                      autoPlay: true,
                      onPageChanged: (index, reason) {
                        setState(() {
                          _current = index;
                          for (int i = 0; i < imageSliders.length; i++) {
                            if (i == index) {
                              _isSelected[i] = true;
                            } else {
                              _isSelected[i] = false;
                            }
                          }
                        });
                      }),
                  carouselController: _controller,
                ),
                AspectRatio(
                  aspectRatio: 18 / 8,
                  child: Center(
                    child: InkWell(
                      onTap: () {
                        js.context.callMethod('open', [links[_current]]);
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(60),
                          color: Colors.white.withOpacity(0.5),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            places[_current],
                            style: TaydinStyles.notoSans20Bold.copyWith(
                              color: Colors.red.shade300,
                              fontWeight: FontWeight.bold,
                              fontSize: 30,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                ResponsiveWidget.isSmallScreen(context)
                    ? Container()
                    : AspectRatio(
                        aspectRatio: 17 / 8,
                        child: Center(
                          heightFactor: 1,
                          child: Align(
                            alignment: Alignment.bottomCenter,
                            child: Padding(
                              padding: EdgeInsets.only(
                                left: screenSize.width / 8,
                                right: screenSize.width / 8,
                              ),
                              child: Card(
                                elevation: 5,
                                child: Padding(
                                  padding: EdgeInsets.only(
                                    top: screenSize.height / 50,
                                    bottom: screenSize.height / 50,
                                  ),
                                  child: Stack(
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          for (int i = 0;
                                              i < places.length;
                                              i++)
                                            Column(
                                              mainAxisSize: MainAxisSize.min,
                                              children: [
                                                InkWell(
                                                  splashColor:
                                                      Colors.transparent,
                                                  hoverColor:
                                                      Colors.transparent,
                                                  onHover: (value) {
                                                    setState(() {
                                                      value
                                                          ? _isHovering[i] =
                                                              true
                                                          : _isHovering[i] =
                                                              false;
                                                    });
                                                  },
                                                  onTap: () async {
                                                    await _controller
                                                        .animateToPage(i);
                                                    // js.context.callMethod(
                                                    //     'open', [links[_current]]);
                                                  },
                                                  onDoubleTap: () {
                                                    js.context.callMethod(
                                                        'open',
                                                        [links[_current]]);
                                                  },
                                                  child: Padding(
                                                    padding: EdgeInsets.only(
                                                        top: screenSize.height /
                                                            80,
                                                        bottom:
                                                            screenSize.height /
                                                                90),
                                                    child: Text(places[i],
                                                        style: TaydinStyles
                                                            .notoSans12Normal
                                                            .copyWith(
                                                          color: _isHovering[i]
                                                              ? Colors
                                                                  .blueGrey[900]
                                                              : Colors.blueGrey,
                                                        )),
                                                  ),
                                                ),
                                                Visibility(
                                                  maintainSize: true,
                                                  maintainAnimation: true,
                                                  maintainState: true,
                                                  visible: _isSelected[i],
                                                  child: AnimatedOpacity(
                                                    duration: const Duration(
                                                        milliseconds: 400),
                                                    opacity:
                                                        _isSelected[i] ? 1 : 0,
                                                    child: Container(
                                                      height: 5,
                                                      decoration:
                                                          const BoxDecoration(
                                                        color: Colors.blueGrey,
                                                        borderRadius:
                                                            BorderRadius.all(
                                                          Radius.circular(10),
                                                        ),
                                                      ),
                                                      width:
                                                          screenSize.width / 10,
                                                    ),
                                                  ),
                                                )
                                              ],
                                            ),
                                        ],
                                      ),
                                      const Positioned(
                                        right: 10,
                                        child: OnHoverButton(
                                          child: SizedBox(
                                            height: 30,
                                            width: 30,
                                            child: Icon(Icons.info_sharp),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                SideBarNotifier.getInstance.isHovered
                    ? Positioned(
                        right: 100,
                        bottom: 100,
                        child: Center(
                          child: Container(
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
                                  "Double click on the project name to see the source code.",
                                  style: TaydinStyles.notoSans20Bold.copyWith(
                                    color: Colors.black,
                                    fontWeight: FontWeight.normal,
                                    fontSize: 15,
                                  ),
                                  textAlign: TextAlign.start,
                                ),
                              ),
                            ),
                          ),
                        ),
                      )
                    : const Center()
              ],
            ));
  }
}
