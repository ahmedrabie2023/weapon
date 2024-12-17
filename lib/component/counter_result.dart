import 'package:flutter/material.dart';
import 'package:weapon/component/text_header.dart';
class CounterResult extends StatelessWidget {
  final String name;
  final int counter;
  const CounterResult({super.key, required this.name, required this.counter});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),

      child: Column(
        children: [
        TextHeader(name: name, size: 15),
        TextHeader(name:counter.toString() , size: 20,isBold: true,)
        ],
      ),
    );
  }
}
