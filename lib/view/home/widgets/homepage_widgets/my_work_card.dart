import 'package:flutter/material.dart';
import 'package:turgaydin/utils/styles.dart';
import 'package:turgaydin/utils/taydin_colors.dart';

class HoverCardMyWork extends StatefulWidget {
  final void Function()? onPressed;
  final String context;
  const HoverCardMyWork({super.key, this.onPressed, required this.context});

  @override
  _HoverCardMyWorkState createState() => _HoverCardMyWorkState();
}

class _HoverCardMyWorkState extends State<HoverCardMyWork>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation _animation;
  late Animation padding;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 275),
      vsync: this,
    );
    _animation = Tween(begin: 1.0, end: 1.2).animate(CurvedAnimation(
        parent: _controller, curve: Curves.ease, reverseCurve: Curves.easeIn));
    padding = Tween(begin: 0.0, end: -25.0).animate(CurvedAnimation(
        parent: _controller, curve: Curves.ease, reverseCurve: Curves.easeIn));
    _controller.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onPressed,
      child: Padding(
        padding: const EdgeInsets.only(top: 25.0),
        child: SizedBox(
          height: MediaQuery.of(context).size.height * 0.3,
          width: MediaQuery.of(context).size.width * 0.2,
          child: MouseRegion(
            onEnter: (value) {
              setState(() {
                _controller.forward();
              });
            },
            onExit: (value) {
              setState(() {
                _controller.reverse();
              });
            },
            child: Padding(
              padding: EdgeInsets.symmetric(
                  vertical: MediaQuery.of(context).size.width * 0.009,
                  horizontal: MediaQuery.of(context).size.width * 0.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black26,
                      offset: Offset(0.0, 20.0),
                      spreadRadius: -10.0,
                      blurRadius: 20.0,
                    )
                  ],
                ),
                child: Container(
                    height: 250.0,
                    width: 500.0,
                    decoration: BoxDecoration(
                      color: TaydinColors.backgorundColor,
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    clipBehavior: Clip.hardEdge,
                    transform: Matrix4(
                        _animation.value,
                        0,
                        0,
                        0,
                        0,
                        _animation.value,
                        0,
                        0,
                        0,
                        0,
                        1,
                        0,
                        padding.value,
                        padding.value,
                        0,
                        1),
                    child: Stack(
                      children: [
                        Container(
                          child: Image.asset(
                            "assets/logo/bgImage.png",
                            color: TaydinColors.white.withOpacity(0.3),
                            height: MediaQuery.of(context).size.height,
                            width: MediaQuery.of(context).size.width,
                          ),
                        ),
                        Center(
                            child: Text(
                          widget.context,
                          textAlign: TextAlign.center,
                          overflow: TextOverflow.ellipsis,
                          style: TaydinStyles.notoSans30.copyWith(
                              color: TaydinColors.flutterBlue, fontSize: 20),
                        )),
                      ],
                    )),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
