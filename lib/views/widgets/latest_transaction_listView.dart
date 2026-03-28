import 'package:flutter/material.dart';
import 'package:respnsive_dash_board/models/user_info_model.dart';
import 'package:respnsive_dash_board/utls/app_images.dart';
import 'package:respnsive_dash_board/views/widgets/user_info_listtile.dart';

class LatesetTransactionListView extends StatelessWidget {
  const LatesetTransactionListView({super.key});
  static const List<UserInfoModel> items = const [
    UserInfoModel(
      image: Assets.imagesAvatar2,
      title: 'Madrani Andi',
      subTitle: 'Madraniadi20@gmail',
    ),
    UserInfoModel(
      image: Assets.imagesAvatar3,
      title: 'Madrani Andi',
      subTitle: 'Madraniadi20@gmail',
    ),
    UserInfoModel(
      image: Assets.imagesAvatar2,
      title: 'Madrani Andi',
      subTitle: 'Madraniadi20@gmail',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: items
            .map((e) => IntrinsicWidth(child: UserInfoListTile(userInfo: e)))
            .toList(),
      ),
    );
    // anathor way
    // Row(
    //   children: List.generate(3, (index) {
    //     return IntrinsicWidth(
    //       child: UserInfoListTile(userInfo: items[index]),
    //     );
    //   }),
    // ),

    // SizedBox(
    //   height: 85,
    //   child: ListView.builder(
    //     itemCount: items.length,
    //     scrollDirection: Axis.horizontal,
    //     itemBuilder: (context, index) {
    //       return IntrinsicWidth(
    //         child: UserInfoListTile(userInfo: items[index]),
    //       );
    //     },
    //   ),
    // ),
  }
}
