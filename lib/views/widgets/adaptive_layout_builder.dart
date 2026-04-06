import 'package:flutter/material.dart';

class AdaptiveLayoutBuilder extends StatelessWidget {
  const AdaptiveLayoutBuilder({
    super.key,
    required this.mobileLayout,
    required this.tablitLayout,
    required this.desktopLayout,
  });
  final WidgetBuilder mobileLayout, tablitLayout, desktopLayout;
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constrains) {
        if (constrains.maxWidth < 800) {
          return mobileLayout(context);
        } else if (constrains.maxWidth < 1200) {
          return tablitLayout(context);
        } else {
          return desktopLayout(context);
        }
      },
    );
  }
}
