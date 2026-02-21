import 'package:flutter/material.dart';
import 'package:respnsive_dash_board/views/widgets/custom_drawer.dart';

class DashboardDesktoplayout extends StatelessWidget {
  const DashboardDesktoplayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(children: [Expanded(child: CustomDrawer())]);
  }
}
