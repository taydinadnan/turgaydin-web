import 'package:flutter/material.dart';
import 'package:turgaydin/utils/styles.dart';

class TopBarContents extends StatefulWidget {
  final double opacity;

  const TopBarContents(this.opacity, {super.key});

  @override
  TopBarContentsState createState() => TopBarContentsState();
}

class TopBarContentsState extends State<TopBarContents> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;

    return PreferredSize(
      preferredSize: Size(screenSize.width, 1000),
      child: Container(
        color: Colors.blueGrey.shade900.withOpacity(widget.opacity),
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Adnan Turgay Aydin',
                style: TaydinStyles.remachineTitle.copyWith(
                  color: Colors.white,
                  fontSize: 50,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
