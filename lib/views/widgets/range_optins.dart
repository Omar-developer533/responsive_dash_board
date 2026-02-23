import 'package:flutter/material.dart';
import 'package:respnsive_dash_board/utls/app_styles.dart';

class RangeOptions extends StatelessWidget {
  const RangeOptions({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        border: BoxBorder.all(color: Color(0xffF1F1F1), width: 1),
      ),
      child: Row(
        children: [
          Text('Monthly', style: AppStyles.styleMedium16),
          SizedBox(width: 18),
          Icon(Icons.keyboard_arrow_down, color: Color(0xff064061)),
        ],
      ),
    );
  }
}
