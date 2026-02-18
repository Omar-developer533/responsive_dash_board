import 'package:flutter/material.dart';
import 'package:respnsive_dash_board/views/widgets/adaptive_layout_builder.dart';
import 'package:respnsive_dash_board/views/widgets/dashboard_desktopLayout.dart';

class DashBoardView extends StatelessWidget {
  const DashBoardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AdaptiveLayoutBuilder(
        mobileLayout: (context) {
          return SizedBox();
        },
        tablitLayout: (context) {
          return SizedBox();
        },
        desktopLayout: (context) {
          return DashboardDesktoplayout();
        },
      ),
    );
  }
}
