import 'package:flutter/material.dart';
import 'package:respnsive_dash_board/utls/app_styles.dart';
import 'package:respnsive_dash_board/views/widgets/dots_inducator.dart';
import 'package:respnsive_dash_board/views/widgets/my_card_page_view.dart';

class MyCardsSection extends StatefulWidget {
  const MyCardsSection({super.key});

  @override
  State<MyCardsSection> createState() => _MyCardsSectionState();
}

class _MyCardsSectionState extends State<MyCardsSection> {
  late PageController pageController;
  int curruntIndex = 0;
  @override
  void initState() {
    pageController = PageController();
    pageController.addListener(() {
      curruntIndex = pageController.page!.round();
      setState(() {});
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('My card', style: AppStyles.styleSemiBold20(context)),
        SizedBox(height: 20),
        MyCardPageView(controller: pageController),
        SizedBox(height: 20),
        DotsInducator(currentIndex: curruntIndex),
      ],
    );
  }
}
