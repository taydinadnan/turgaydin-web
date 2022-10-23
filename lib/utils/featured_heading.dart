import 'package:flutter/material.dart';
import 'package:turgaydin/utils/responsive.dart';

class FeaturedHeading extends StatelessWidget {
  const FeaturedHeading({
    Key? key,
    required this.screenSize,
  }) : super(key: key);

  final Size screenSize;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: screenSize.height * 0.06,
        left: screenSize.width / 15,
        right: screenSize.width / 15,
      ),
      child: ResponsiveWidget.isSmallScreen(context)
          ? Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(),
                const Text(
                  'Latest projects',
                  style: TextStyle(
                    fontSize: 24,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 5),
                const Text(
                  'Check source codes on GitHub',
                  textAlign: TextAlign.end,
                ),
                const SizedBox(height: 10),
              ],
            )
          : Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              children: const [
                Text(
                  'Latest projects',
                  style: TextStyle(
                    fontSize: 40,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Expanded(
                  child: Text(
                    'Check source codes on GitHub',
                    textAlign: TextAlign.end,
                  ),
                ),
              ],
            ),
    );
  }
}
