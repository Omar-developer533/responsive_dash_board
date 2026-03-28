import 'package:flutter/material.dart';
import 'package:respnsive_dash_board/utls/app_styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, this.backGroundColor, required this.text, this.color});
  final Color? backGroundColor;
  final String text;
  final Color? color;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 62,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          elevation: 0,
          backgroundColor: backGroundColor ?? Color(0xff4EB7F2),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        onPressed: () {},
        child: Text(
          text,
          style: AppStyles.styleSemiBold18.copyWith(color:color?? Colors.white),
        ),
      ),
    );
  }
}
