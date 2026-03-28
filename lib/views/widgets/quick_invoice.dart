import 'package:flutter/material.dart';
import 'package:respnsive_dash_board/utls/app_images.dart';
import 'package:respnsive_dash_board/utls/app_styles.dart';
import 'package:respnsive_dash_board/views/widgets/custom_back_ground_container.dart';
import 'package:respnsive_dash_board/views/widgets/latestTransection.dart';
import 'package:respnsive_dash_board/views/widgets/quick_invoice_header.dart';
import 'package:respnsive_dash_board/views/widgets/user_info_listtile.dart';

class QuickInvoice extends StatelessWidget {
  const QuickInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBackGroundContainer(
      padding: 24,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [QuickInvoiceHeader(), LatestTransaction()],
      ),
    );
  }
}
