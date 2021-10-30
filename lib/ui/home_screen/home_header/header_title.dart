import 'package:flutter/material.dart';

class HeaderTitle extends StatelessWidget {
  final String title;
  final Function onPress;

  const HeaderTitle({Key key, @required this.title, this.onPress})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0,vertical: 10),
      child: InkWell(
        onTap: onPress,
        child: Text(
          title,
          style: const TextStyle(
              fontSize: 18, color: Colors.black, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
