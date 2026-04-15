import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:respnsive_dash_board/models/user_info_model.dart';
import 'package:respnsive_dash_board/utls/app_styles.dart';

class UserInfoListTile extends StatelessWidget {
  const UserInfoListTile({super.key, required this.userInfo});
  final UserInfoModel userInfo;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: Color(0xffFAFAFA),
      child: Center(
        child: ListTile(
          leading: SvgPicture.asset(userInfo.image),
          title: Text(
            userInfo.title,
            style: AppStyles.styleSemiBold16(context),
          ),
          subtitle: Text(userInfo.subTitle, style: AppStyles.styleRegular12(context)),
        ),
      ),
    );
  }
}
