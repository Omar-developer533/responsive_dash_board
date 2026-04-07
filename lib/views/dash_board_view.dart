import 'package:flutter/material.dart';
import 'package:respnsive_dash_board/views/widgets/adaptive_layout_builder.dart';
import 'package:respnsive_dash_board/views/widgets/custom_drawer.dart';
import 'package:respnsive_dash_board/views/widgets/dash_board_mobile_layout.dart';
import 'package:respnsive_dash_board/views/widgets/dashboard_desktopLayout.dart';
import 'package:respnsive_dash_board/views/widgets/dashboard_tablit_layout.dart';

class DashBoardView extends StatefulWidget {
  const DashBoardView({super.key});

  @override
  State<DashBoardView> createState() => _DashBoardViewState();
}

class _DashBoardViewState extends State<DashBoardView> {
  final GlobalKey<ScaffoldState> globalKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: globalKey,
      drawer: MediaQuery.sizeOf(context).width < 800 ? CustomDrawer() : null,
      appBar: MediaQuery.sizeOf(context).width < 800
          ? AppBar(
              backgroundColor: Color(0xffFAFAFA),
              elevation: 0,
              leading: IconButton(
                onPressed: () {
                  globalKey.currentState!.openDrawer();
                  setState(() {});
                },
                icon: Icon(Icons.menu),
              ),
            )
          : null,
      backgroundColor: Color(0xffF7F9FA),
      body: AdaptiveLayoutBuilder(
        mobileLayout: (context) {
          return DashBoardMobileLayout();
        },
        tablitLayout: (context) {
          return DashboardTablitLayout();
        },
        desktopLayout: (context) {
          return DashboardDesktoplayout();
        },
      ),
    );
  }
}
