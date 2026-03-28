import 'package:flutter/material.dart';
import 'package:respnsive_dash_board/views/widgets/all_expenses.dart';
import 'package:respnsive_dash_board/views/widgets/custom_drawer.dart';
import 'package:respnsive_dash_board/views/widgets/quick_invoice.dart';

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
          child: Column(
            children: [AllExpenses(), SizedBox(height: 24), QuickInvoice()],
          ),
        ),
      ],
    );
  }
}
