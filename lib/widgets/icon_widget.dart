import 'package:flutter/material.dart';

class MyIcon extends StatelessWidget {
  final IconData iconData;
  final Color? color;
  final double? size;

  const MyIcon(this.iconData, {super.key, this.color, this.size});

  @override
  Widget build(BuildContext context) {
    return Icon(iconData, color: color, size: size);
  }
}