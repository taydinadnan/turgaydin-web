import 'package:flutter/material.dart';
import 'package:turgaydin/utils/bottom_bar.dart';
import 'package:turgaydin/utils/carousel.dart';
import 'package:turgaydin/utils/destination_heading.dart';
import 'package:turgaydin/utils/explore_drawer.dart';
import 'package:turgaydin/utils/featured_heading.dart';
import 'package:turgaydin/utils/featured_tiles.dart';
import 'package:turgaydin/utils/floating_quick_access_bar.dart';
import 'package:turgaydin/utils/responsive.dart';
import 'package:turgaydin/utils/welcome_tiles.dart';
import 'package:turgaydin/utils/top_bar_contents.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
      body: SingleChildScrollView(
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
                    fit: BoxFit.fitWidth,
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
                        WelcomeTiles(screenSize: screenSize),
                        // FeaturedTiles(screenSize: screenSize)
                      ],
                    ),
                  ],
                )
              ],
            ),
            DestinationHeading(screenSize: screenSize),
            const DestinationCarousel(),
            SizedBox(height: screenSize.height / 10),
            const BottomBar(),
          ],
        ),
      ),
    );
  }
}
