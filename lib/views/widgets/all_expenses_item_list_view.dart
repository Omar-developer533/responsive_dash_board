import 'package:flutter/material.dart';
import 'package:respnsive_dash_board/models/all_expenses_item_model.dart';
import 'package:respnsive_dash_board/utls/app_images.dart';
import 'package:respnsive_dash_board/views/widgets/all_expenses_item.dart';

class AllExpensesItemListView extends StatefulWidget {
  const AllExpensesItemListView({super.key});

  @override
  State<AllExpensesItemListView> createState() =>
      _AllExpensesItemListViewState();
}

class _AllExpensesItemListViewState extends State<AllExpensesItemListView> {
  final List<AllExpensesItemModel> items = const [
    AllExpensesItemModel(
      image: Assets.imagesBalance,
      title: 'Balance',
      date: 'April 2022',
      price: r'$20,129',
    ),
    AllExpensesItemModel(
      image: Assets.imagesIncome,
      title: 'Income',
      date: 'April 2022',
      price: r'$20,129',
    ),
    AllExpensesItemModel(
      image: Assets.imagesExpenses,
      title: 'Expenses',
      date: 'April 2022',
      price: r'$20,129',
    ),
  ];
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: GestureDetector(
            onTap: () {
              selectedIndex = 0;
              setState(() {});
            },
            child: AllExpensesItem(
              allExpensesItemModel: items[0],
              isSelected: selectedIndex == 0,
            ),
          ),
        ),
        SizedBox(width: 12),
        Expanded(
          child: GestureDetector(
            onTap: () {
              selectedIndex = 1;
              setState(() {});
            },
            child: AllExpensesItem(
              allExpensesItemModel: items[1],
              isSelected: selectedIndex == 1,
            ),
          ),
        ),
        SizedBox(width: 12),
        Expanded(
          child: GestureDetector(
            onTap: () {
              selectedIndex = 2;
              setState(() {});
            },
            child: AllExpensesItem(
              allExpensesItemModel: items[2],
              isSelected: selectedIndex == 2,
            ),
          ),
        ),
      ],

      //  List.generate(3, (index) {
      //   return Expanded(
      //     child: Padding(
      //       padding: EdgeInsets.only(right: index == 2 ? 0 : 16.0),
      //       child: GestureDetector(
      //         onTap: () {
      //           selectedIndex = index;
      //           setState(() {});
      //         },
      //         child: AllExpensesItem(
      //           isSelected: selectedIndex == index,
      //           allExpensesItemModel: items[index],
      //         ),
      //       ),
      //     ),
      //   );
      // }),
    );
  }
}
