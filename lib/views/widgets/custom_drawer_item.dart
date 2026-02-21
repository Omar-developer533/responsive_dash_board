import 'package:flutter/material.dart';
import 'package:respnsive_dash_board/models/drawer_item_model.dart';
import 'package:respnsive_dash_board/views/widgets/active_and_inactive_drawer_item.dart';

class CustomDrawerItem extends StatelessWidget {
  const CustomDrawerItem({
    super.key,
    required this.item,
    required this.ispressed,
  });
  final DrawerItemModel item;
  final bool ispressed;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20.0),
      child: ispressed
          ? ActiveDrawerItem(item: item)
          : InActiveDrawerItem(item: item),
    );
  }
}
