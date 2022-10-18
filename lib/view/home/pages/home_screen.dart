import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:turgaydin/providers/sidebar/side_bar_notifier.dart';
import 'package:turgaydin/utils/taydin_colors.dart';
import 'package:turgaydin/view/home/widgets/custom_app_bar.dart';
import 'package:turgaydin/view/home/widgets/side_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: TaydinColors.backgroundGrey,
        appBar: const PreferredSize(
          preferredSize: Size.fromHeight(150),
          child: CustomAppBar(),
        ),
        body: Consumer<SideBarNotifier>(
          builder: (context, sideBarNotifier, child) => const SidebarPage(),
        ));
  }
}
