import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:respnsive_dash_board/utls/size_config.dart';
import 'package:respnsive_dash_board/views/widgets/detailed_income_chart.dart';
import 'package:respnsive_dash_board/views/widgets/incom_details.dart';
import 'package:respnsive_dash_board/views/widgets/income_chart.dart';

class IncomeSectionBody extends StatelessWidget {
  const IncomeSectionBody({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    // log(width.toString());
    return width >= SizeConfig.desktop && width < 1485
        ? Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: DetailedIncomeChart(),
            ),
          )
        : Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(child: IncomeChart()),
              Expanded(flex: 2, child: IncomDetails()),
            ],
          );
  }
}
