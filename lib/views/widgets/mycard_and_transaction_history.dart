import 'package:flutter/material.dart';
import 'package:respnsive_dash_board/views/widgets/custom_back_ground_container.dart';
import 'package:respnsive_dash_board/views/widgets/my_cards_section.dart';
import 'package:respnsive_dash_board/views/widgets/transaction_history.dart';
import 'package:respnsive_dash_board/views/widgets/transaction_history_list_view.dart';

class MycardAndTransactionHistory extends StatelessWidget {
  const MycardAndTransactionHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBackGroundContainer(
      child: Column(
        children: [
          MyCardsSection(),
          Divider(height: 40, color: Color(0xffF1F1F1)),
          TransactionHistory(),
        ],
      ),
    );
  }
}
