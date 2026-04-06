import 'package:flutter/material.dart';

import 'package:respnsive_dash_board/views/widgets/custom_back_ground_container.dart';
import 'package:respnsive_dash_board/views/widgets/latestTransection.dart';
import 'package:respnsive_dash_board/views/widgets/quick_invoice_form.dart';
import 'package:respnsive_dash_board/views/widgets/quick_invoice_header.dart';

class QuickInvoice extends StatelessWidget {
  const QuickInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBackGroundContainer(
      padding: 24,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          QuickInvoiceHeader(),
          LatestTransaction(),
          QuickInvoiceForm(),
        ],
      ),
    );
  }
}
