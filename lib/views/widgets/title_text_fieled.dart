import 'package:flutter/material.dart';
import 'package:respnsive_dash_board/utls/app_styles.dart';
import 'package:respnsive_dash_board/views/widgets/custom_text_field.dart';

class TitleTextFieled extends StatelessWidget {
  const TitleTextFieled({
    super.key,
    required this.title,
    required this.hintText,
  });
  final String title, hintText;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title, style: AppStyles.styleMedium16),
        SizedBox(height: 12),
        CustomTextField(text: hintText),
      ],
    );
  }
}
