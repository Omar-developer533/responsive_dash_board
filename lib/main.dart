import 'package:flutter/material.dart';
import 'package:respnsive_dash_board/views/dash_board_view.dart';

void main() {
  runApp(const ResponsiveDashBoard());
}
class ResponsiveDashBoard extends StatelessWidget {
  const ResponsiveDashBoard({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DashBoardView(),
    );
  }
}