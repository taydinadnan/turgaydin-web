import 'package:collapsible_sidebar/collapsible_sidebar.dart';
import 'package:flutter/material.dart';

import 'package:turgaydin/view/aboutMe/pages/about_me_page.dart';
import 'package:turgaydin/view/contact/pages/contact_page.dart';
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

  Widget headline = const HomePage();

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
          headline = const ContactPage();
          notifyListeners();
        },
      ),
    ];
  }

  void setheadlineHome() {
    headline = const HomePage();
  }

  bool _isHomeVisible = true;
  bool get isHomeVisible => _isHomeVisible;
  void setIsHomeVisible(bool value) {
    _isHomeVisible = value;
    notifyListeners();
  }

  bool _isAboutMeVisible = true;
  bool get isAboutMeVisible => _isAboutMeVisible;
  void setIsAboutMeVisible(bool value) {
    _isAboutMeVisible = value;
    notifyListeners();
  }

  bool _isResumeVisible = true;
  bool get isResumeVisible => _isResumeVisible;
  void setIsResumeVisible(bool value) {
    _isResumeVisible = value;
    notifyListeners();
  }

  bool _isContactVisible = true;
  bool get isContactVisible => _isContactVisible;
  void setIsContactVisible(bool value) {
    _isContactVisible = value;
    notifyListeners();
  }

  bool _isHovered = false;
  bool get isHovered => _isHovered;
  void onEntered(bool value) {
    _isHovered = value;
    print(value);
    notifyListeners();
  }
}
