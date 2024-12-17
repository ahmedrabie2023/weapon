import 'package:flutter/material.dart';
class TextHeader extends StatelessWidget {
 final String name;
 final double size;
 final bool isBold;
  const TextHeader({super.key, required this.name,required this.size, this.isBold=false});
  @override
  Widget build(BuildContext context) {
    return Text(name,style: TextStyle(
      color: Colors.white,
      fontSize: size,
      fontWeight: isBold?FontWeight.bold:FontWeight.normal
    ),);
  }
}
