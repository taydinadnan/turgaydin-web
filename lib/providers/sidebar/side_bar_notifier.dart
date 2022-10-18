import 'package:collapsible_sidebar/collapsible_sidebar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:turgaydin/view/aboutMe/pages/about_me_page.dart';
import 'package:turgaydin/view/home/pages/home_page.dart';
import 'package:turgaydin/view/myWork/pages/my_work_page.dart';
import 'package:turgaydin/view/resume/pages/resume_page.dart';

class SideBarNotifier with ChangeNotifier {
  static SideBarNotifier? _instance;

  SideBarNotifier._private() {
    _instance = this;
  }

  static SideBarNotifier get getInstance {
    if (_instance == null) return SideBarNotifier._private();
    return _instance!;
  }

  late List<CollapsibleItem> items;
  Widget headline = const SizedBox();

  List<CollapsibleItem> get generateItems {
    return [
      CollapsibleItem(
        text: 'Home',
        icon: Icons.home,
        onPressed: () {
          headline = const HomePage();

          notifyListeners();
        },
        isSelected: true,
      ),
      CollapsibleItem(
        text: 'About Me',
        icon: Icons.person,
        onPressed: () {
          headline = const AboutMePage();
          notifyListeners();
        },
      ),
      CollapsibleItem(
        text: 'My Work',
        icon: Icons.work,
        onPressed: () {
          headline = const MyWorkPage();
          notifyListeners();
        },
      ),
      CollapsibleItem(
        text: 'Resume',
        icon: Icons.document_scanner_rounded,
        onPressed: () {
          headline = const ResumePage();
          notifyListeners();
        },
      ),
      CollapsibleItem(
        text: 'Contact Me',
        icon: Icons.contact_page,
        onPressed: () {
          // headline = 'Contact Me';
          notifyListeners();
        },
      ),
    ];
  }

  late List<CollapsibleItem> rightBarItems;

  List<CollapsibleItem> get generateItemsForRightBar {
    return [
      CollapsibleItem(
        text: 'Home',
        icon: Icons.social_distance,
        onPressed: () {
          print("Clicked");
          notifyListeners();
        },
        isSelected: true,
      ),
      CollapsibleItem(
        text: 'About Me',
        icon: Icons.link,
        onPressed: () {
          print("Clicked");
          notifyListeners();
        },
      ),
      CollapsibleItem(
        text: 'My Work',
        icon: Icons.install_desktop,
        onPressed: () {
          print("Clicked");
          notifyListeners();
        },
      ),
    ];
  }
}
