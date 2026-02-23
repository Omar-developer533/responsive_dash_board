import 'package:flutter/material.dart';
import 'package:respnsive_dash_board/views/widgets/all_expenses_header.dart';
import 'package:respnsive_dash_board/views/widgets/all_expenses_item_list_view.dart';

class AllExpenses extends StatelessWidget {
  const AllExpenses({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 20),
      decoration: BoxDecoration(
        color: Color(0xffFFFFFF),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: AllExpensesHeader(),
          ),
          SizedBox(height: 16),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 4),
            child: AllExpensesItemListView(),
          ),
        ],
      ),
    );
  }
}
