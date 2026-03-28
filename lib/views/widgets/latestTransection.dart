import 'package:flutter/material.dart';
import 'package:respnsive_dash_board/utls/app_styles.dart';
import 'package:respnsive_dash_board/views/widgets/latest_transaction_listView.dart';

class LatestTransaction extends StatelessWidget {
  const LatestTransaction({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Latest Transaction', style: AppStyles.styleMedium16),
        SizedBox(height: 16),
        LatesetTransactionListView(),

        Divider(height: 48, color: Color(0xffF1F1F1)),
      ],
    );
  }
}
