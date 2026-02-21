import 'package:flutter/material.dart';
import 'package:respnsive_dash_board/models/drawer_item_model.dart';
import 'package:respnsive_dash_board/utls/app_images.dart';
import 'package:respnsive_dash_board/views/widgets/custom_drawer_item.dart';
import 'package:respnsive_dash_board/views/widgets/item_drawer_list_view.dart';
import 'package:respnsive_dash_board/views/widgets/user_info_listtile.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xffFFFFFF),
      child: Column(
        children: [
          UserInfoListTile(
            image: Assets.imagesAvatar,
            title: 'Lekan Okeowo',
            subtitle: 'demo@gmail.com',
          ),
          SizedBox(height: 8),
          ItemDrawerListView(),
          SizedBox(height: 8),
        ],
      ),
    );
  }
}
