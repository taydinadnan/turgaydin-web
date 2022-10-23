import 'package:flutter/material.dart';
import 'package:turgaydin/utils/bottom_bar_column.dart';
import 'package:turgaydin/utils/info_text.dart';
import 'package:turgaydin/utils/responsive.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(30),
      color: Colors.blueGrey[900],
      child: ResponsiveWidget.isSmallScreen(context)
          ? Column(
              children: [
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: const [
                    BottomBarColumn(
                      heading: 'ABOUT',
                      s1: 'Contact Us',
                      s2: 'About Us',
                    ),
                    BottomBarColumn(
                      heading: 'HELP',
                      s1: 'Payment',
                      s2: 'Cancellation',
                    ),
                    BottomBarColumn(
                      heading: 'SOCIAL',
                      s1: 'Twitter',
                      s2: 'Facebook',
                    ),
                  ],
                ),
                const Divider(
                  color: Colors.blueGrey,
                ),
                const SizedBox(height: 20),
                const InfoText(
                  type: 'Email',
                  text: 'explore@gmail.com',
                ),
                const SizedBox(height: 5),
                const InfoText(
                  type: 'Address',
                  text: '128, Trymore Road, Delft, MN - 56124',
                ),
                const SizedBox(height: 20),
                const Divider(
                  color: Colors.blueGrey,
                ),
                const SizedBox(height: 20),
                Text(
                  'Copyright © 2020 | EXPLORE',
                  style: TextStyle(
                    color: Colors.blueGrey.shade300,
                    fontSize: 14,
                  ),
                ),
              ],
            )
          : Column(
              children: [
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    const BottomBarColumn(
                      heading: 'Contact',
                      s1: 'Linked',
                      s2: 'GitHub',
                    ),
                    const BottomBarColumn(
                      heading: 'SOCIAL',
                      s1: 'Twitter',
                      s2: 'Instagram',
                    ),
                    Container(
                      color: Colors.blueGrey,
                      width: 2,
                      height: 150,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        InfoText(
                          type: 'Email',
                          text: 'taydinadnan@gmail.com',
                        ),
                        SizedBox(height: 5),
                        InfoText(
                          type: 'Phone',
                          text: '+387 64 40 57 832',
                        )
                      ],
                    ),
                  ],
                ),
                const Divider(
                  color: Colors.blueGrey,
                ),
                const SizedBox(height: 20),
                Text(
                  'Copyright © 2020 | Adnan Turgay Aydin',
                  style: TextStyle(
                    color: Colors.blueGrey.shade300,
                    fontSize: 14,
                  ),
                ),
              ],
            ),
    );
  }
}
