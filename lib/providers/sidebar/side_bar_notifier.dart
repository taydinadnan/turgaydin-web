import 'package:flutter/material.dart';

import 'package:turgaydin/view/home/pages/home_page.dart';
import 'package:turgaydin/view/myWork/widgets/projects.dart';

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

  bool _isMyWorkVisible = true;
  bool get isMyWorkVisible => _isMyWorkVisible;
  void setIsMyWorkVisible(bool value) {
    _isMyWorkVisible = value;
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
    notifyListeners();
    print(_isHovered);
  }

  List<ProjectsWidget> projects = [
    const ProjectsWidget(
      projectName: "Bring App",
      description: "Food Delivery App",
      image: "assets/logo/thumbnail.png",
    ),
    const ProjectsWidget(
      projectName: "Tarot App",
      description: "Tellers app",
      image: "assets/logo/thumbnail.png",
    ),
    const ProjectsWidget(
      projectName: "Shortly App",
      description: "Link Shortener app",
      image: "assets/logo/thumbnail.png",
    ),
    const ProjectsWidget(
      projectName: "Flutter Developer Portfolio",
      description: "Flutter web project",
      image: "assets/logo/thumbnail.png",
    ),
  ];
}
