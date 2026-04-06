import 'package:flutter/material.dart';
import 'package:respnsive_dash_board/utls/app_styles.dart';
import 'package:respnsive_dash_board/views/widgets/custom_back_ground_container.dart';
import 'package:respnsive_dash_board/views/widgets/incom_section_header.dart';
import 'package:respnsive_dash_board/views/widgets/income_chart.dart';

class IncomeSection extends StatelessWidget {
  const IncomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBackGroundContainer(
      child: Column(
        children: [
          IncomSectionHeader(),
          Expanded(
            child: Row(children: [Expanded(child: IncomeChart())]),
          ),
        ],
      ),
    );
  }
}
