import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AllExpensesItemHeader extends StatelessWidget {
  const AllExpensesItemHeader({
    super.key,
    required this.image,
    this.imageBackGround,
    this.imageColor,
  });
  final String image;
  final Color? imageBackGround, imageColor;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Flexible(
          child: ConstrainedBox(
            constraints: BoxConstraints(maxWidth: 60),
            child: AspectRatio(
              aspectRatio: 1,
              child: Container(
                decoration: ShapeDecoration(
                  shape: OvalBorder(),
                  color: imageBackGround ?? Color(0xffFAFAFA),
                ),
                child: Center(
                  child: SvgPicture.asset(
                    image,
                    colorFilter: ColorFilter.mode(
                      imageColor ?? Color(0xff4EB7F2),
                      BlendMode.srcIn,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
        Spacer(),
        Expanded(
          child: Icon(
            Icons.keyboard_arrow_right,
            color: imageColor ?? Color(0xff064061),
          ),
        ),
      ],
    );
  }
}
