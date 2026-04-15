
import 'package:flutter/material.dart';
import 'package:respnsive_dash_board/utls/app_styles.dart';

class IncomSectionHeader extends StatelessWidget {
  const IncomSectionHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text('Income', style: AppStyles.styleSemiBold20(context)),
        Container(
          padding: const EdgeInsets.symmetric(
            vertical: 12,
            horizontal: 16,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            border: BoxBorder.all(color: Color(0xffF1F1F1)),
          ),
          child: Row(
            children: [
              Text('Monthly', style: AppStyles.styleMedium16(context)),
              SizedBox(width: 16),
              Transform.rotate(
                angle: -1.57079633,
                child: Icon(Icons.arrow_back_ios_new),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
