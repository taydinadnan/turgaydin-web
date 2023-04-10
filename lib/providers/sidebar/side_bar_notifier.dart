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
  }

  List<ProjectsWidget> projects = [
    const ProjectsWidget(
      projectName: "Bring App",
      description: "Food Delivery App",
      image: "assets/logo/bring 1.png",
      projectLink:
          "https://github.com/taydinadnan/BringApp-Delivery-service-app",
    ),
    const ProjectsWidget(
      projectName: "Tarot App",
      description: "Tellers app",
      image: "assets/logo/tarot 3.png",
      projectLink: "https://github.com/taydinadnan/imparatarot",
    ),
    const ProjectsWidget(
      projectName: "Shortly App",
      description: "Link Shortener app",
      image: "assets/logo/shortly 3.png",
      projectLink:
          "https://github.com/taydinadnan/grisoftware-shortly-challange",
    ),
    const ProjectsWidget(
      projectName: "Flutter Developer Portfolio",
      description: "Flutter web project",
      image: "assets/logo/site 5.png",
      projectLink: "https://github.com/taydinadnan/turgaydin-web",
    ),
  ];

  List<String> descriptions = [
    "This is a flutter project that has 4 apps: Users App, Sellers App, Riders App and Admin Web Portal.",
    "This is a flutter project that has 2 apps: Tarot App and Tellers Web portal. When users send request, tellers can see it on web portal.",
    "This is a flutter project that has 1 app: This app uses shortly api to shorten url/links.",
    "This is a flutter web project. Responsive for both desktop browsers and mobile browsers."
  ];

  String desriptionText = '';

  bool _isDescription1 = false;
  bool get isDescription1 => _isDescription1;
  void setIsDescription1(bool value) {
    _isDescription1 = value;
    desriptionText = bringApp;
    _isDescription2 = false;
    _isDescription3 = false;
    _isDescription4 = false;

    notifyListeners();
  }

  bool _isDescription2 = false;
  bool get isDescription2 => _isDescription2;
  void setIsDescription2(bool value) {
    _isDescription2 = value;
    desriptionText = tarotApp;
    _isDescription1 = false;
    _isDescription3 = false;
    _isDescription4 = false;

    notifyListeners();
  }

  bool _isDescription3 = false;
  bool get isDescription3 => _isDescription3;
  void setIsDescription3(bool value) {
    _isDescription3 = value;
    desriptionText = shortlyApp;
    _isDescription1 = false;
    _isDescription2 = false;
    _isDescription4 = false;

    notifyListeners();
  }

  bool _isDescription4 = false;
  bool get isDescription4 => _isDescription4;
  void setIsDescription4(bool value) {
    _isDescription4 = value;
    desriptionText = webPortfolio;
    _isDescription1 = false;
    _isDescription2 = false;
    _isDescription3 = false;

    notifyListeners();
  }

  final String bringApp =
      "Online food ordering and delivery platform flutter iOS &\nAndroid Food Shop App with a Admin Web panel\n,Working Clone application.\n\n\n \nUsers App,\nSellers App,\nRidersApp,\nAdmin Web Portal,\nAvaiable for IOS,Android,WEB";
  final String tarotApp =
      "ImparaTarot is a Flutter project.\nAn application where users can have fun with tarot \ncards and see the answers to the questions they want.\n\n\n \nTarot App,\nWep Panel for tellers\n ";
  final String shortlyApp =
      "Flutter app integrated with the shrtcode API\nUsers are able to:\n-View the optimal layout for the mobile app depending on \ntheir device's screen size\n-Shorten any valid URL\n-Copy the shortened link to their clipboard in a single click\n-Receive an error message when the form is submitted if:\n-The input field is empty";
  final String webPortfolio =
      "A portfolio build by using flutter for web.\n\n\n \nResponsive for all desktop browser sizes \nand responsive for mobile browsers.";
}
