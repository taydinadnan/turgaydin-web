import 'package:collapsible_sidebar/collapsible_sidebar.dart';
import 'package:flutter/material.dart';

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
  String headline = "";

  List<CollapsibleItem> get generateItems {
    return [
      CollapsibleItem(
        text: 'Home',
        icon: Icons.home,
        onPressed: () {
          headline = 'Home';
          notifyListeners();
        },
        isSelected: true,
      ),
      CollapsibleItem(
        text: 'About Me',
        icon: Icons.person,
        onPressed: () {
          headline = 'About Me';
          notifyListeners();
        },
      ),
      CollapsibleItem(
        text: 'My Work',
        icon: Icons.work,
        onPressed: () {
          headline = 'My Work';
          notifyListeners();
        },
      ),
      CollapsibleItem(
        text: 'Resume',
        icon: Icons.document_scanner_rounded,
        onPressed: () {
          headline = 'Resume';
          notifyListeners();
        },
      ),
      CollapsibleItem(
        text: 'Contact Me',
        icon: Icons.contact_page,
        onPressed: () {
          headline = 'Contact Me';
          notifyListeners();
        },
      ),
    ];
  }
}
