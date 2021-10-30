import 'package:flutter/material.dart';

class HeaderIcon extends StatelessWidget {
  final IconData icon;
  final Function onPress;

  const HeaderIcon({Key key, this.icon, this.onPress}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black)
      ),
      child: IconButton(
        icon: Icon(icon),
        color: Colors.black,
        onPressed: onPress,
      ),
    );
  }
}
