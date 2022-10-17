import 'package:flutter/material.dart';
import 'package:turgaydin/utils/styles.dart';
import 'package:turgaydin/utils/taydin_colors.dart';
import 'package:turgaydin/view/home/pages/home_screen.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            width: 2,
            color: Colors.grey.shade200,
          ),
        ),
      ),
      child: AppBar(
        elevation: 0,
        backgroundColor: Colors.blueGrey[50],
        flexibleSpace: Padding(
          padding:
              const EdgeInsets.only(right: 24, left: 24, top: 24, bottom: 24),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const HomeScreen()));
                    },
                    child: Image.asset(
                      "assets/logo/a_Logo.png",
                      height: 200,
                    ),
                  ),
                  Text(
                    "Adnan Turgay Aydin",
                    style: TaydinStyles.notoSans14Bold.copyWith(fontSize: 20),
                  )
                ],
              ),
              Text(
                "Flutter Developer",
                style: TaydinStyles.notoSans18Bold
                    .copyWith(color: TaydinColors.flutterBlue),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
