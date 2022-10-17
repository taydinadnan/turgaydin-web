import 'package:collapsible_sidebar/collapsible_sidebar.dart';
import 'package:flutter/material.dart';
import 'package:turgaydin/providers/sidebar/side_bar_notifier.dart';
import 'package:turgaydin/utils/styles.dart';
import 'dart:math' as math show pi;
import '../pages/home_screen.dart';

class SidebarPage extends StatefulWidget {
  const SidebarPage({super.key});

  @override
  _SidebarPageState createState() => _SidebarPageState();
}

class _SidebarPageState extends State<SidebarPage> {
  List<CollapsibleItem> _items = [];

  @override
  void initState() {
    _items = SideBarNotifier.getInstance.generateItems;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return CollapsibleSidebar(
      height: size.height,
      sidebarBoxShadow: [
        BoxShadow(
          color: Colors.grey.shade200,
          blurRadius: 20,
          spreadRadius: 0.01,
          offset: const Offset(3, 3),
        ),
        BoxShadow(
          color: Colors.grey.shade200,
          blurRadius: 50,
          spreadRadius: 0.01,
          offset: const Offset(3, 3),
        ),
      ],
      isCollapsed: MediaQuery.of(context).size.width <= 800,
      items: _items,
      title: 'A Turgay Aydin',
      onTitleTap: () {
        Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => const HomeScreen()));
      },
      body: _body(size, context),
      // backgroundColor: Colors.white,
      textStyle: TaydinStyles.textStyle,
      titleStyle: TaydinStyles.titleStyle,
      toggleTitleStyle: TaydinStyles.titleStyle,
    );
  }

  Widget _body(Size size, BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      color: Colors.white,
      child: Center(
        child: Transform.rotate(
          angle: math.pi / 2,
          child: Transform.translate(
            offset: Offset(-size.height * 0.3, -size.width * 0.23),
            child: Text(
              SideBarNotifier.getInstance.headline,
              style: Theme.of(context).textTheme.headline1,
              overflow: TextOverflow.visible,
              softWrap: false,
            ),
          ),
        ),
      ),
    );
  }
}
