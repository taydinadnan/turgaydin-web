import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:turgaydin/providers/sidebar/side_bar_notifier.dart';
import 'package:turgaydin/utils/bottom_bar.dart';
import 'package:turgaydin/utils/carousel.dart';
import 'package:turgaydin/utils/destination_heading.dart';
import 'package:turgaydin/utils/floating_quick_access_bar.dart';
import 'package:turgaydin/utils/responsive.dart';
import 'package:turgaydin/utils/welcome_tiles.dart';
import 'package:turgaydin/utils/top_bar_contents.dart';
import 'dart:js' as js;

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  HomeScreenState createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {
  final ScrollController _scrollController = ScrollController();
  double _scrollPosition = 0;
  double _opacity = 0;

  _scrollListener() {
    setState(() {
      _scrollPosition = _scrollController.position.pixels;
    });
  }

  @override
  void initState() {
    _scrollController.addListener(_scrollListener);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    _opacity = _scrollPosition < screenSize.height * 0.40
        ? _scrollPosition / (screenSize.height * 0.40)
        : 1;

    return Scaffold(
        floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
        floatingActionButton: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: screenSize.height / 2),
              child: FloatingActionButton(
                onPressed: () {
                  js.context
                      .callMethod('open', ['https://github.com/taydinadnan']);
                },
                backgroundColor: Colors.white,
                splashColor: Colors.purple,
                hoverColor: Colors.grey.shade300,
                elevation: 12,
                focusElevation: 5,
                child: Image.asset(
                  "assets/logo/github.png",
                ),
              ),
            ),
            const SizedBox(height: 8),
            FloatingActionButton(
              onPressed: () {
                js.context.callMethod(
                    'open', ['https://www.linkedin.com/in/taydinadnan/']);
              },
              backgroundColor: Colors.white,
              splashColor: Colors.purple,
              hoverColor: Colors.grey.shade300,
              elevation: 12,
              focusElevation: 5,
              child: Image.asset(
                "assets/logo/linkedin.png",
                height: 30,
                color: Colors.blue,
              ),
            ),
          ],
        ),
        backgroundColor: Color(0xFF493149).withOpacity(0.09),
        extendBodyBehindAppBar: true,
        appBar: ResponsiveWidget.isSmallScreen(context)
            ? AppBar(
                backgroundColor: Colors.blueGrey.shade900.withOpacity(_opacity),
                elevation: 0,
                title: Text(
                  'Adnan Turgay Aydin',
                  style: TextStyle(
                    color: Colors.blueGrey.shade100,
                    fontSize: 20,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w400,
                    letterSpacing: 3,
                  ),
                ),
              )
            : PreferredSize(
                preferredSize: Size(screenSize.width, 1000),
                child: TopBarContents(_opacity),
              ),
        // drawer: const ExploreDrawer(),
        body: Consumer<SideBarNotifier>(
          builder: (context, plansNotifier, child) => SingleChildScrollView(
            controller: _scrollController,
            physics: const ClampingScrollPhysics(),
            child: Column(
              children: [
                Stack(
                  children: [
                    SizedBox(
                      height: screenSize.height * 0.45,
                      width: screenSize.width,
                      child: Image.asset(
                        'assets/logo/thumbnailv2.png',
                        fit: ResponsiveWidget.isSmallScreen(context)
                            ? BoxFit.fitHeight
                            : BoxFit.fitWidth,
                      ),
                    ),
                    Column(
                      children: [
                        FloatingQuickAccessBar(screenSize: screenSize),
                        Column(
                          children: [
                            // FeaturedHeading(
                            //   screenSize: screenSize,
                            // ),
                            if (SideBarNotifier.getInstance.isHomeVisible)
                              WelcomeTiles(screenSize: screenSize)
                            else if (SideBarNotifier
                                .getInstance.isAboutMeVisible)
                              Container(
                                  color: Colors.red, height: 400, width: 400)
                            else if (SideBarNotifier
                                .getInstance.isResumeVisible)
                              Container(
                                  color: Colors.green, height: 400, width: 400)
                            else if (SideBarNotifier
                                .getInstance.isContactVisible)
                              Container(
                                  color: Colors.pink, height: 400, width: 400)

                            // FeaturedTiles(screenSize: screenSize)
                          ],
                        ),
                      ],
                    )
                  ],
                ),
                if (SideBarNotifier.getInstance.isHomeVisible)
                  DestinationHeading(screenSize: screenSize)
                else if (SideBarNotifier.getInstance.isAboutMeVisible)
                  Container(color: Colors.red, height: 400, width: 400)
                else if (SideBarNotifier.getInstance.isResumeVisible)
                  Container(color: Colors.green, height: 400, width: 400)
                else if (SideBarNotifier.getInstance.isContactVisible)
                  Container(color: Colors.pink, height: 400, width: 400),
                if (SideBarNotifier.getInstance.isHomeVisible)
                  const DestinationCarousel()
                else if (SideBarNotifier.getInstance.isAboutMeVisible)
                  Container(color: Colors.red, height: 400, width: 400)
                else if (SideBarNotifier.getInstance.isResumeVisible)
                  Container(color: Colors.green, height: 400, width: 400)
                else if (SideBarNotifier.getInstance.isContactVisible)
                  Container(color: Colors.pink, height: 400, width: 400),
                SizedBox(height: screenSize.height / 10),
                const BottomBar(),
              ],
            ),
          ),
        ));
  }
}
