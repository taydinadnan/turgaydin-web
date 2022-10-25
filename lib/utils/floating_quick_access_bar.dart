import 'package:flutter/material.dart';
import 'package:turgaydin/providers/sidebar/side_bar_notifier.dart';
import 'package:turgaydin/utils/responsive.dart';

class FloatingQuickAccessBar extends StatefulWidget {
  const FloatingQuickAccessBar({
    Key? key,
    required this.screenSize,
  }) : super(key: key);

  final Size screenSize;

  @override
  FloatingQuickAccessBarState createState() => FloatingQuickAccessBarState();
}

class FloatingQuickAccessBarState extends State<FloatingQuickAccessBar> {
  final List _isHovering = [false, false, false, false];
  List<Widget> rowElements = [];

  List<String> items = ['Home', 'About Me', 'Resume', 'Contact'];
  List<IconData> icons = [
    Icons.home,
    Icons.person,
    Icons.document_scanner_rounded,
    Icons.contact_page
  ];

  List<Widget> generateRowElements() {
    rowElements.clear();
    for (int i = 0; i < items.length; i++) {
      Widget elementTile = InkWell(
        splashColor: Colors.transparent,
        hoverColor: Colors.transparent,
        onHover: (value) {
          setState(() {
            value ? _isHovering[i] = true : _isHovering[i] = false;
          });
        },
        onTap: () {
          if (items[i] == items[0]) {
            SideBarNotifier.getInstance.setIsHomeVisible(true);
            SideBarNotifier.getInstance.setIsAboutMeVisible(false);
            SideBarNotifier.getInstance.setIsResumeVisible(false);
            SideBarNotifier.getInstance.setIsContactVisible(false);
          }
          if (items[i] == items[1]) {
            SideBarNotifier.getInstance.setIsHomeVisible(false);
            SideBarNotifier.getInstance.setIsAboutMeVisible(true);
            SideBarNotifier.getInstance.setIsResumeVisible(false);
            SideBarNotifier.getInstance.setIsContactVisible(false);
          }
          if (items[i] == items[2]) {
            SideBarNotifier.getInstance.setIsHomeVisible(false);
            SideBarNotifier.getInstance.setIsAboutMeVisible(false);
            SideBarNotifier.getInstance.setIsResumeVisible(true);
            SideBarNotifier.getInstance.setIsContactVisible(false);
          }
          if (items[i] == items[3]) {
            SideBarNotifier.getInstance.setIsHomeVisible(false);
            SideBarNotifier.getInstance.setIsAboutMeVisible(false);
            SideBarNotifier.getInstance.setIsResumeVisible(false);
            SideBarNotifier.getInstance.setIsContactVisible(true);
          }
        },
        child: InkWell(
          onTap: () {
            if (items[i] == items[0]) {
              SideBarNotifier.getInstance.setIsHomeVisible(true);
              SideBarNotifier.getInstance.setIsAboutMeVisible(false);
              SideBarNotifier.getInstance.setIsResumeVisible(false);
              SideBarNotifier.getInstance.setIsContactVisible(false);
            }
            if (items[i] == items[1]) {
              SideBarNotifier.getInstance.setIsHomeVisible(false);
              SideBarNotifier.getInstance.setIsAboutMeVisible(true);
              SideBarNotifier.getInstance.setIsResumeVisible(false);
              SideBarNotifier.getInstance.setIsContactVisible(false);
            }
            if (items[i] == items[2]) {
              SideBarNotifier.getInstance.setIsHomeVisible(false);
              SideBarNotifier.getInstance.setIsAboutMeVisible(false);
              SideBarNotifier.getInstance.setIsResumeVisible(true);
              SideBarNotifier.getInstance.setIsContactVisible(false);
            }
            if (items[i] == items[3]) {
              SideBarNotifier.getInstance.setIsHomeVisible(false);
              SideBarNotifier.getInstance.setIsAboutMeVisible(false);
              SideBarNotifier.getInstance.setIsResumeVisible(false);
              SideBarNotifier.getInstance.setIsContactVisible(true);
            }
          },
          child: SizedBox(
            height: widget.screenSize.height / 20,
            width: widget.screenSize.width / 7,
            child: Center(
              child: Text(
                items[i],
                style: TextStyle(
                  color:
                      _isHovering[i] ? Colors.blueGrey[900] : Colors.blueGrey,
                ),
              ),
            ),
          ),
        ),
      );
      Widget spacer = SizedBox(
        height: widget.screenSize.height / 20,
        child: VerticalDivider(
          width: 1,
          color: Colors.blueGrey[100],
          thickness: 1,
        ),
      );
      rowElements.add(elementTile);
      if (i < items.length - 1) {
        rowElements.add(spacer);
      }
    }

    return rowElements;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      heightFactor: 1,
      child: Padding(
        padding: EdgeInsets.only(
          top: widget.screenSize.height * 0.40,
          left: ResponsiveWidget.isSmallScreen(context)
              ? widget.screenSize.width / 12
              : widget.screenSize.width / 5,
          right: ResponsiveWidget.isSmallScreen(context)
              ? widget.screenSize.width / 12
              : widget.screenSize.width / 5,
        ),
        child: ResponsiveWidget.isSmallScreen(context)
            ? Column(
                children: [
                  ...Iterable<int>.generate(items.length).map(
                    (int pageIndex) => Padding(
                      padding:
                          EdgeInsets.only(top: widget.screenSize.height / 80),
                      child: InkWell(
                        onTap: () {
                          if (items[pageIndex] == items[0]) {
                            SideBarNotifier.getInstance.setIsHomeVisible(true);
                            SideBarNotifier.getInstance
                                .setIsAboutMeVisible(false);
                            SideBarNotifier.getInstance
                                .setIsResumeVisible(false);
                            SideBarNotifier.getInstance
                                .setIsContactVisible(false);
                          }
                          if (items[pageIndex] == items[1]) {
                            SideBarNotifier.getInstance.setIsHomeVisible(false);
                            SideBarNotifier.getInstance
                                .setIsAboutMeVisible(true);
                            SideBarNotifier.getInstance
                                .setIsResumeVisible(false);
                            SideBarNotifier.getInstance
                                .setIsContactVisible(false);
                          }
                          if (items[pageIndex] == items[2]) {
                            SideBarNotifier.getInstance.setIsHomeVisible(false);
                            SideBarNotifier.getInstance
                                .setIsAboutMeVisible(false);
                            SideBarNotifier.getInstance
                                .setIsResumeVisible(true);
                            SideBarNotifier.getInstance
                                .setIsContactVisible(false);
                          }
                          if (items[pageIndex] == items[3]) {
                            SideBarNotifier.getInstance.setIsHomeVisible(false);
                            SideBarNotifier.getInstance
                                .setIsAboutMeVisible(false);
                            SideBarNotifier.getInstance
                                .setIsResumeVisible(false);
                            SideBarNotifier.getInstance
                                .setIsContactVisible(true);
                          }
                        },
                        child: Card(
                          elevation: 4,
                          child: Padding(
                            padding: EdgeInsets.only(
                                top: widget.screenSize.height / 45,
                                bottom: widget.screenSize.height / 45,
                                left: widget.screenSize.width / 20),
                            child: Row(
                              children: [
                                Icon(
                                  icons[pageIndex],
                                  color: Colors.blueGrey,
                                ),
                                SizedBox(width: widget.screenSize.width / 20),
                                Text(
                                  items[pageIndex],
                                  style: const TextStyle(
                                      color: Colors.blueGrey, fontSize: 16),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              )
            : Card(
                elevation: 5,
                child: Padding(
                  padding: EdgeInsets.only(
                    top: widget.screenSize.height / 50,
                    bottom: widget.screenSize.height / 50,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: generateRowElements(),
                  ),
                ),
              ),
      ),
    );
  }
}
