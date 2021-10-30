import 'package:flutter/material.dart';
import 'package:gdg_website_demo1/constants/colors.dart';
import 'package:gdg_website_demo1/resoponsive/responsive_widget.dart';
import 'package:gdg_website_demo1/ui/home_screen/home_header/header_title.dart';

class HomeFooter extends StatelessWidget {
  const HomeFooter({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget(
      web: Container(
        color: kPrimaryColor,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    HeaderTitle(
                      title: 'Privacy Policy',
                      onPress: () {},
                    ),
                    HeaderTitle(
                      title: 'Terms and conditions',
                      onPress: () {},
                    ),
                    HeaderTitle(
                      title: 'Contact Us',
                      onPress: () {},
                    ),
                  ],
                ),
                Flexible(
                  child: Wrap(
                    children: [
                      HeaderTitle(
                        title: '+2012345679',
                        onPress: () {},
                      ),
                      HeaderTitle(title: 'contacts@gdgismaillia.com')
                    ],
                  ),
                ),
                Image.asset(
                  'assets/images/logo.png',
                  height: 100,
                  width: 300,
                ),
              ],
            ),
            HeaderTitle(title: '2021 GDG-Ismaillia | All Rights Reserved',)
          ],
        ),
      ),
      mobile: Container(),
    );
  }
}
