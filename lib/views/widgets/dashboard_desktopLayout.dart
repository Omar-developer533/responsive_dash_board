import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:respnsive_dash_board/utls/app_images.dart';
import 'package:respnsive_dash_board/utls/app_styles.dart';
import 'package:respnsive_dash_board/views/widgets/all_expenses.dart';
import 'package:respnsive_dash_board/views/widgets/all_expenses_and_quick_invoice_section.dart';
import 'package:respnsive_dash_board/views/widgets/custom_back_ground_container.dart';
import 'package:respnsive_dash_board/views/widgets/custom_dot_.dart';
import 'package:respnsive_dash_board/views/widgets/dots_inducator.dart';
import 'package:respnsive_dash_board/views/widgets/custom_drawer.dart';
import 'package:respnsive_dash_board/views/widgets/my_card.dart';
import 'package:respnsive_dash_board/views/widgets/my_card_page_view.dart';
import 'package:respnsive_dash_board/views/widgets/my_cards_section.dart';
import 'package:respnsive_dash_board/views/widgets/quick_invoice.dart';

class DashboardDesktoplayout extends StatelessWidget {
  const DashboardDesktoplayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: CustomDrawer()),
        SizedBox(width: 32),
        Expanded(flex: 2, child: AllExpensesAndQuickInvoiceSection()),
        SizedBox(width: 24),
        Expanded(child: MyCardsSection()),
      ],
    );
  }
}
