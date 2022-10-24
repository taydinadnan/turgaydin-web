import 'dart:math';

import 'package:flutter/material.dart';
import 'package:turgaydin/providers/sidebar/side_bar_notifier.dart';

class OnHoverButton extends StatefulWidget {
  const OnHoverButton({Key? key, required this.child}) : super(key: key);

  final Widget child;

  @override
  State<OnHoverButton> createState() => _OnHoverButtonState();
}

class _OnHoverButtonState extends State<OnHoverButton> {
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (event) => SideBarNotifier.getInstance.onEntered(true),
      onExit: (event) => SideBarNotifier.getInstance.onEntered(false),
      child: AnimatedContainer(
        duration: Duration(milliseconds: 200),
        child: widget.child,
      ),
    );
  }
}
