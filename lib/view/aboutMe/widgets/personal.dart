import 'package:flutter/material.dart';
import 'package:turgaydin/utils/styles.dart';

class PersonalTab extends StatelessWidget {
  const PersonalTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 50.0, left: 50, right: 50),
      child: FittedBox(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Adnan Turgay Aydin",
              style: TaydinStyles.openSansNormal.copyWith(
                fontWeight: FontWeight.bold,
                fontSize: 30,
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.01,
            ),
            Wrap(
              children: [
                Text(
                  "Nationality :",
                  style: TaydinStyles.openSansNormal.copyWith(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                      color: Colors.black.withOpacity(0.5)),
                  overflow: TextOverflow.ellipsis,
                ),
                Text(
                  " Turkey",
                  // style: TaydinStyles.poppins16Bold
                  //     .copyWith(color: Colors.white.withOpacity(0.8)),
                  style: TaydinStyles.openSansNormal.copyWith(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                      color: Colors.white.withOpacity(0.8)),

                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
            Wrap(
              children: [
                Text(
                  "Age: ",
                  style: TaydinStyles.openSansNormal.copyWith(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                      color: Colors.black.withOpacity(0.5)),
                  overflow: TextOverflow.ellipsis,
                ),
                Text(
                  "26.04.1997",
                  style: TaydinStyles.openSansNormal.copyWith(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                      color: Colors.white.withOpacity(0.8)),
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
            Wrap(
              children: [
                Text(
                  "Profession : ",
                  style: TaydinStyles.openSansNormal.copyWith(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                      color: Colors.black.withOpacity(0.5)),
                  overflow: TextOverflow.ellipsis,
                ),
                Text(
                  "Flutter Developer",
                  style: TaydinStyles.openSansNormal.copyWith(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                      color: Colors.white.withOpacity(0.8)),
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
            Wrap(
              children: [
                Text(
                  "Location: ",
                  style: TaydinStyles.openSansNormal.copyWith(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                      color: Colors.black.withOpacity(0.5)),
                  overflow: TextOverflow.ellipsis,
                ),
                Text(
                  "Sarajevo, BiH",
                  style: TaydinStyles.openSansNormal.copyWith(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                      color: Colors.white.withOpacity(0.8)),
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
