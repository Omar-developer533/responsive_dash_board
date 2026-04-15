import 'package:flutter/material.dart';
import 'package:respnsive_dash_board/models/item_detail_model.dart';
import 'package:respnsive_dash_board/utls/app_styles.dart';

class ItemDetails extends StatelessWidget {
  const ItemDetails({super.key, required this.item});
  final ItemDetailModel item;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      minLeadingWidth: 0,

      leading: Container(
        height: 12,
        width: 12,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: item.color,
        ),
      ),
      title: Text(item.title, style: AppStyles.styleRegular16(context)),
      trailing: Text(
        item.value,
        style: AppStyles.styleMedium16(context).copyWith(color: Color(0xff208CC8)),
      ),
    );
  }
}
