import 'package:flutter/material.dart';
import 'package:turgaydin/utils/responsive.dart';
import 'package:turgaydin/utils/styles.dart';

class DestinationHeading extends StatelessWidget {
  const DestinationHeading({
    Key? key,
    required this.screenSize,
  }) : super(key: key);

  final Size screenSize;

  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget.isSmallScreen(context)
        ? Container(
            padding: EdgeInsets.only(
              top: screenSize.height / 30,
              bottom: screenSize.height / 20,
            ),
            width: screenSize.width,
            child: Text('My Noteworthy Projects',
                textAlign: TextAlign.center,
                style: TaydinStyles.openSansTitle
                    .copyWith(fontSize: 30, fontWeight: FontWeight.bold)),
          )
        : Container(
            padding: EdgeInsets.only(
              top: screenSize.height / 30,
              bottom: screenSize.height / 15,
            ),
            width: screenSize.width,
            child: Text('My Noteworthy Projects',
                textAlign: TextAlign.center,
                style: TaydinStyles.openSansTitle
                    .copyWith(fontSize: 30, fontWeight: FontWeight.bold)),
          );
  }
}
