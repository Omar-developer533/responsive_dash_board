import 'package:flutter/material.dart';

import 'package:respnsive_dash_board/views/widgets/custom_drawer.dart';
import 'package:respnsive_dash_board/views/widgets/dash_board_mobile_layout.dart';


class DashboardTablitLayout extends StatelessWidget {
  const DashboardTablitLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: CustomDrawer()),
        const SizedBox(width: 32),
        Expanded(
          flex: 3,
          child: DashBoardMobileLayout(),
        ),
        const SizedBox(width: 32),
      ],
    );
  }
}
