import 'package:flutter/material.dart';
import 'package:respnsive_dash_board/views/widgets/custom_dot_.dart';

class DotsInducator extends StatelessWidget {
  const DotsInducator({super.key, required this.currentIndex});
  final int currentIndex;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(
        3,
        (index) => Padding(
          padding: const EdgeInsets.only(right: 6),
          child: CustomDotInducator(isActive: currentIndex==index),
        ),
      ),
    );
  }
}
