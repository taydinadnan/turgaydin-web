import 'package:collapsible_sidebar/collapsible_sidebar.dart';
import 'package:flutter/material.dart';
import 'package:turgaydin/providers/sidebar/side_bar_notifier.dart';
import 'package:turgaydin/utils/styles.dart';
import 'package:turgaydin/view/home/widgets/right_side_bar.dart';
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
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: CollapsibleSidebar(
            toggleTitle: "",
            showTitle: false,
            height: 400,
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
            body: _body(size, context),
          ),
        ),
        const RightSideBarPage(),
      ],
    );
  }

  Widget _body(Size size, BuildContext context) {
    return Container(
      height: size.height,
      width: double.infinity - 400,
      color: Colors.white,

      child: SideBarNotifier.getInstance.headline,

    );
  }
}
