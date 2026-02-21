import 'package:flutter/material.dart';
import 'package:respnsive_dash_board/models/drawer_item_model.dart';
import 'package:respnsive_dash_board/utls/app_images.dart';
import 'package:respnsive_dash_board/views/widgets/custom_drawer_item.dart';

class ItemDrawerListView extends StatefulWidget {
  const ItemDrawerListView({super.key});

  @override
  State<ItemDrawerListView> createState() => _ItemDrawerListViewState();
}

class _ItemDrawerListViewState extends State<ItemDrawerListView> {
  List<DrawerItemModel> items = [
    DrawerItemModel(icon: Assets.imagesDashboard, title: 'Dashboard'),
    DrawerItemModel(icon: Assets.imagesMyTransaktion, title: 'My Transaction'),
    DrawerItemModel(icon: Assets.imagesGraph, title: 'Statistics'),
    DrawerItemModel(icon: Assets.imagesWallet2, title: 'Wallet Account'),
    DrawerItemModel(icon: Assets.imagesMyInvestments, title: 'My Investments'),
  ];
  int selectedindex = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(5, (index) {
        return GestureDetector(
          onTap: () {
            if (selectedindex != index) {
              selectedindex = index;
              setState(() {
          
              });
            }
          },
          child: CustomDrawerItem(
            item: items[index],
            ispressed: selectedindex == index,
          ),
        );
      }),
    );
  }
}
