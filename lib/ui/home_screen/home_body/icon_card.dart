import 'package:flutter/material.dart';
import 'package:gdg_website_demo1/constants/colors.dart';

class IconContainerCard extends StatelessWidget {
  const IconContainerCard({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: [
        IconCardItem(title:'Flutter',image: 'assets/images/flutter.png',onPress: (){},),
        IconCardItem(title:'Kotlin',image: 'assets/images/kotlin.png',onPress: (){},),
        IconCardItem(title:'firebase',image: 'assets/images/firebase.png',onPress: (){},),
        IconCardItem(title:'Google Cloud',image: 'assets/images/google-cloud.png',onPress: (){},),
        IconCardItem(title:'Tensor Flow',image: 'assets/images/tensorflow.png',onPress: (){},),
      ],
    );
  }
}

class IconCardItem extends StatelessWidget {
  const IconCardItem({Key key, this.image, this.onPress, this.title}) : super(key: key);
  final String image;
  final Function onPress;
  final String title;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPress,
      child: Padding(
        padding: const EdgeInsets.all(40.0),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(8),
              decoration:
                  BoxDecoration(color: kPrimaryColor, shape: BoxShape.circle),
              child: Image.asset(
                image,
                height: 80,
                width: 80,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(title,),
            )
          ],
        ),
      ),
    );
  }
}
