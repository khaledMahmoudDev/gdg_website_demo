import 'package:flutter/material.dart';
import 'package:gdg_website_demo1/constants/colors.dart';
import 'package:gdg_website_demo1/resoponsive/responsive_widget.dart';
import 'package:gdg_website_demo1/ui/home_screen/home_body/icon_card.dart';

import 'home_post_container.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ResponsiveWidget(
          web: Padding(
            padding: const EdgeInsets.all(20.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(50),
              child: Image.asset(
                'assets/images/gdg1.png',
                fit: BoxFit.fill,
                width: MediaQuery.of(context).size.width * .7,
              ),
            ),
          ),
          mobile: Image.asset(
            'assets/images/gdg1.png',
            fit: BoxFit.fill,
            width: double.infinity,
          ),
        ),
        Padding(
            padding: EdgeInsets.symmetric(vertical: 20),
            child: IconContainerCard()),
        Divider(),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40.0, vertical: 10),
          child: Row(
            children: [
              Text(
                'New Events',
                style: TextStyle(
                    color: kButtonColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 18),
              ),
              Spacer(),
            ],
          ),
        ),
        HomePostContainer()
      ],
    );
  }
}
