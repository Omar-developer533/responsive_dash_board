import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:respnsive_dash_board/models/drawer_item_model.dart';
import 'package:respnsive_dash_board/utls/app_styles.dart';

class CustomDrawerItem extends StatelessWidget {
  const CustomDrawerItem({super.key, required this.item, required this.ispressed});
  final DrawerItemModel item;
  final bool ispressed;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20.0),
      child: ListTile(
        leading: SvgPicture.asset(item.icon),
        title: Text(item.title, style:ispressed?AppStyles.styleBold16: AppStyles.styleRegular16),
      ),
    );
  }
}
