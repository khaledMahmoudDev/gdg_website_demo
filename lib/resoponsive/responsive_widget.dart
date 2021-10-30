import 'package:flutter/material.dart';

class ResponsiveWidget extends StatelessWidget {
  const ResponsiveWidget({Key key, this.mobile, this.web}) : super(key: key);
  final Widget mobile;
  final Widget web;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constrains) {
      if (constrains.maxWidth < 450) {
        return mobile;
      } else {
        return web;
      }
    });
  }
}
