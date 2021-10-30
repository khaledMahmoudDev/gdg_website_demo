import 'package:flutter/material.dart';
import 'package:gdg_website_demo1/ui/home_screen/home_body/home_body.dart';
import 'package:gdg_website_demo1/ui/home_screen/home_footer/home_footer.dart';
import 'package:gdg_website_demo1/ui/home_screen/home_header/home_header.dart';

import 'home_header/header_icon.dart';
import 'home_header/header_title.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MediaQuery.of(context).size.width < 500
          ? AppBar(
              title: Text('GDG Ismaillia'),
              actions: [
                HeaderIcon(
                  icon: Icons.person_outline,
                  onPress: () {},
                ),
                HeaderIcon(
                  icon: Icons.search,
                  onPress: () {},
                ),
              ],
            )
          : null,
      drawer: MediaQuery.of(context).size.width < 500
          ? Drawer(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  DrawerHeader(
                    child: Image.asset(
                      'assets/images/logo.png',
                      height: 80,
                      width: 200,
                    ),
                  ),
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
                  ),
                  HeaderTitle(
                    title: 'Privacy Policy',
                    onPress: () {},
                  ),
                  HeaderTitle(
                    title: 'Terms and conditions',
                    onPress: () {},
                  ),
                  HeaderTitle(
                    title: '2021 GDG-Ismaillia | All Rights Reserved',
                  )
                ],
              ),
            )
          : null,
      body: SingleChildScrollView(
        child: Column(
          children: [
            MediaQuery.of(context).size.width < 500
                ? Container()
                : HomeHeader(),
            HomeBody(),
            // Spacer(),
            HomeFooter()
          ],
        ),
      ),
    );
  }
}
