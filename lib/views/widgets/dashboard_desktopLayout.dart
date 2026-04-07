import 'package:flutter/material.dart';

import 'package:respnsive_dash_board/views/widgets/all_expenses_and_quick_invoice_section.dart';

import 'package:respnsive_dash_board/views/widgets/custom_drawer.dart';
import 'package:respnsive_dash_board/views/widgets/income_section.dart';

import 'package:respnsive_dash_board/views/widgets/mycard_and_transaction_history_section.dart';

class DashboardDesktoplayout extends StatelessWidget {
  const DashboardDesktoplayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: CustomDrawer()),
        SizedBox(width: 32),
        Expanded(
          flex: 2,
          child: Padding(
            padding: const EdgeInsets.only(top: 40),
            child: AllExpensesAndQuickInvoiceSection(),
          ),
        ),
        SizedBox(width: 24),
        Expanded(
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 40),
                MycardAndTransactionHistorySection(),
                SizedBox(height: 24),
                IncomeSection(),
              ],
            ),
          ),
          // child: CustomScrollView(
          //   slivers: [
          //     SliverToBoxAdapter(
          //       child: Column(
          //         children: [
          //           SizedBox(height: 40),
          //           MycardAndTransactionHistorySection(),
          //           SizedBox(height: 24),
          //         ],
          //       ),
          //     ),
          //     SliverFillRemaining(child: IncomeSection(), hasScrollBody: false),
          //   ],
          // ),
        ),
      ],
    );
  }
}
