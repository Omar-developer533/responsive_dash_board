import 'package:flutter/material.dart';
import 'package:respnsive_dash_board/models/drawer_item_model.dart';
import 'package:respnsive_dash_board/utls/app_images.dart';
import 'package:respnsive_dash_board/views/widgets/active_and_inactive_drawer_item.dart';
import 'package:respnsive_dash_board/views/widgets/custom_drawer_item.dart';
import 'package:respnsive_dash_board/views/widgets/item_drawer_list_view.dart';
import 'package:respnsive_dash_board/views/widgets/user_info_listtile.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xffFFFFFF),
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: UserInfoListTile(
              image: Assets.imagesAvatar,
              title: 'Lekan Okeowo',
              subtitle: 'demo@gmail.com',
            ),
          ),
          SliverToBoxAdapter(child: SizedBox(height: 8)),
          SliverToBoxAdapter(child: ItemDrawerListView()),

          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              children: [
                Expanded(child: SizedBox(height: 20)),
                InActiveDrawerItem(
                  item: DrawerItemModel(
                    icon: Assets.imagesSetting2,
                    title: 'Setting system',
                  ),
                ),
                InActiveDrawerItem(
                  item: DrawerItemModel(
                    icon: Assets.imagesLogout,
                    title: 'Logout account',
                  ),
                ),
                SizedBox(height: 48),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
