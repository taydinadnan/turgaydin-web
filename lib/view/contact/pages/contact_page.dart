import 'package:contactus/contactus.dart';
import 'package:flutter/material.dart';
import 'package:mb_contact_form/mb_contact_form.dart';
import 'package:turgaydin/utils/responsive.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({Key? key, required this.screenSize}) : super(key: key);

  final Size screenSize;

  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget.isSmallScreen(context)
        ? Column(
            children: [
              ContactUs(
                cardColor: Colors.white,
                textColor: Colors.black,
                email: 'taydinadnan@gmail.com',
                companyName: 'Adnan Turgay Aydin',
                companyColor: Colors.red.shade400,
                dividerThickness: 2,
                phoneNumber: '+387644057832',
                website: 'https://turgayaydin.com',
                githubUserName: 'taydinadnan',
                linkedinURL: 'https://www.linkedin.com/in/taydinadnan/',
                tagLine: 'Flutter Developer',
                taglineColor: Colors.red.shade400,
                twitterHandle: 'turgayaydin',
                instagram: 'turgaydin',
                dividerColor: Colors.red.shade400,
              ),
              const Padding(
                padding: EdgeInsets.only(top: 110.0),
                child: MBContactForm(
                  hasHeading: true,
                  withIcons: false,
                  destinationEmail: "taydinadnan@gmail.com",
                ),
              ),
            ],
          )
        : SizedBox(
            width: screenSize.width,
            child: Row(
              children: [
                Expanded(
                  child: ContactUs(
                    cardColor: Colors.white,
                    textColor: Colors.black,
                    email: 'taydinadnan@gmail.com',
                    companyName: 'Adnan Turgay Aydin',
                    companyColor: Colors.red.shade400,
                    dividerThickness: 2,
                    phoneNumber: '+387644057832',
                    website: 'https://turgayaydin.com',
                    githubUserName: 'taydinadnan',
                    linkedinURL: 'https://www.linkedin.com/in/taydinadnan/',
                    tagLine: 'Flutter Developer',
                    taglineColor: Colors.red.shade400,
                    twitterHandle: 'turgayaydin',
                    instagram: 'turgaydin',
                    dividerColor: Colors.red.shade400,
                  ),
                ),
                const Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(top: 110.0),
                    child: MBContactForm(
                      hasHeading: true,
                      withIcons: false,
                      destinationEmail: "taydinadnan@gmail.com",
                    ),
                  ),
                ),
              ],
            ),
          );
  }
}
