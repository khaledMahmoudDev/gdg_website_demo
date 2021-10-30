import 'package:flutter/material.dart';
import 'package:gdg_website_demo1/constants/colors.dart';
import 'package:gdg_website_demo1/ui/home_screen/home_header/header_title.dart';

import 'header_icon.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: kPrimaryColor,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(
            'assets/images/logo.png',
            height: 100,
            width: 300,
          ),
          Flexible(
            child: Wrap(
              children: [
                HeaderTitle(
              title: 'Code-Labs',
              onPress: () {},
            ),
                HeaderTitle(
                  title: 'Events',
                  onPress: () {},
                ),
                HeaderTitle(
                  title: 'Crash-Courses',
                  onPress: () {},
                ),
                HeaderTitle(
                  title: 'About-Us',
                  onPress: () {},
                ),
                HeaderTitle(
                  title: 'Contacts',
                  onPress: () {},
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Row(
              children: [
                HeaderIcon(
                  icon: Icons.person_outline,
                  onPress: () {},
                ),
                HeaderIcon(
                  icon: Icons.search,
                  onPress: () {},
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
