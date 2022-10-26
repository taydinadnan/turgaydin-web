import 'package:collapsible_sidebar/collapsible_sidebar.dart';
import 'package:flutter/material.dart';
import 'package:turgaydin/providers/sidebar/side_bar_notifier.dart';
import 'package:turgaydin/utils/taydin_colors.dart';
import 'package:turgaydin/view/home/widgets/right_side_bar.dart';

class SidebarPage extends StatefulWidget {
  const SidebarPage({super.key});

  @override
  SidebarPageState createState() => SidebarPageState();
}

class SidebarPageState extends State<SidebarPage> {
  List<CollapsibleItem> _items = [];
  bool collapsAction = true;

  // @override
  // void initState() {
  //   _items = SideBarNotifier.getInstance.generateItems;
  //   super.initState();
  // }

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
            sidebarBoxShadow: const [
              BoxShadow(
                color: TaydinColors.backgroundGrey,
                blurRadius: 20,
                spreadRadius: 0.01,
                offset: Offset(3, 3),
              ),
              BoxShadow(
                color: TaydinColors.backgroundGrey,
                blurRadius: 50,
                spreadRadius: 0.01,
                offset: Offset(3, 3),
              ),
            ],
            isCollapsed: true,
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
