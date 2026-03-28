import 'package:flutter/material.dart';
import 'package:respnsive_dash_board/utls/app_styles.dart';
import 'package:respnsive_dash_board/views/widgets/custom_button.dart';
import 'package:respnsive_dash_board/views/widgets/title_text_fieled.dart';

class QuickInvoiceForm extends StatelessWidget {
  const QuickInvoiceForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: TitleTextFieled(
                title: 'Customer name',
                hintText: 'Type customer name',
              ),
            ),
            SizedBox(width: 16),
            Expanded(
              child: TitleTextFieled(
                title: 'Customer Email',
                hintText: 'Type customer email',
              ),
            ),
          ],
        ),
        SizedBox(height: 24),
        Row(
          children: [
            Expanded(
              child: TitleTextFieled(
                title: 'Item name',
                hintText: 'Type customer name',
              ),
            ),
            SizedBox(width: 16),
            Expanded(
              child: TitleTextFieled(title: 'Item mount', hintText: 'USD'),
            ),
          ],
        ),
        SizedBox(height: 24),
        Row(
          children: [
            Expanded(
              child: CustomButton(
                text: 'Add more details',
                backGroundColor: Colors.white,
                color: Color(0xff4EB7F2),
              ),
            ),
            SizedBox(width: 24),
            Expanded(child: CustomButton(text: 'Send Money')),
          ],
        ),
      ],
    );
  }
}
