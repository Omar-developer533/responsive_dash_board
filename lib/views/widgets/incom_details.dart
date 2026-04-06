import 'package:flutter/material.dart';
import 'package:respnsive_dash_board/models/item_detail_model.dart';
import 'package:respnsive_dash_board/utls/app_styles.dart';
import 'package:respnsive_dash_board/views/widgets/item_details.dart';

class IncomDetails extends StatelessWidget {
  const IncomDetails({super.key});
  static const items = [
    ItemDetailModel(
      color: Color(0xff208CC8),
      title: 'Design service',
      value: '40%',
    ),
    ItemDetailModel(
      color: Color(0xff4EB7F2),
      title: 'Design product',
      value: '25%',
    ),
    ItemDetailModel(
      color: Color(0xff064061),
      title: 'Product royalti',
      value: '20%',
    ),
    ItemDetailModel(color: Color(0xffE2DECD), title: 'Other', value: '22%'),
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(
        items.length,
        (index) => ItemDetails(item: items[index]),
      ),
    );
  }
}
