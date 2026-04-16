import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:respnsive_dash_board/utls/size_config.dart';

abstract class AppStyles {
  static TextStyle styleSemiBold16(contex) {
    return TextStyle(
      fontFamily: 'Montserrat',
      fontSize: getResponsiveFontSize(contex, fontSize: 16),
      color: Color(0xff064061),
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle styleRegular12(contex) {
    return TextStyle(
      fontFamily: 'Montserrat',
      fontSize: getResponsiveFontSize(contex, fontSize: 12),
      color: Color(0xffAAAAAA),
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle styleBold16(context) {
    return TextStyle(
      fontFamily: 'Montserrat',
      fontSize: getResponsiveFontSize(context, fontSize: 16),
      color: Color(0xff4EB7F2),
      fontWeight: FontWeight.w700,
    );
  }

  static TextStyle styleRegular16(contex) {
    return TextStyle(
      fontFamily: 'Montserrat',
      fontSize: getResponsiveFontSize(contex, fontSize: 16),
      color: Color(0xff064061),
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle styleSemiBold20(context) {
    return TextStyle(
      fontFamily: 'Montserrat',
      fontSize: getResponsiveFontSize(context, fontSize: 20),
      color: Color(0xff064061),
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle styleMedium16(context) {
    return TextStyle(
      fontFamily: 'Montserrat',
      fontSize: getResponsiveFontSize(context, fontSize: 16),
      color: Color(0xff064061),
      fontWeight: FontWeight.w500,
    );
  }

  static TextStyle styleRegular14(context) {
    return TextStyle(
      fontFamily: 'Montserrat',
      fontSize: getResponsiveFontSize(context, fontSize: 14),
      color: Color(0xffAAAAAA),
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle styleSemiBold24(context) {
    return TextStyle(
      fontFamily: 'Montserrat',
      fontSize: getResponsiveFontSize(context, fontSize: 24),
      color: Color(0xff4EB7F2),
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle styleSemiBold18(context) {
    return TextStyle(
      fontFamily: 'Montserrat',
      fontSize: getResponsiveFontSize(context, fontSize: 18),
      color: Color(0xff4EB7F2),
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle styleMedium20(context) {
    return TextStyle(
      fontFamily: 'Montserrat',
      fontSize: getResponsiveFontSize(context, fontSize: 20),
      color: Color(0xffFFFFFF),
      fontWeight: FontWeight.w500,
    );
  }
}

double getResponsiveFontSize(context, {required double fontSize}) {
  double scaleFactor = getScaleFactor(context);
  double responiveFontSize = fontSize * scaleFactor;
  double loweLimit = fontSize * 0.8;
  double upperLimit = fontSize * 1.2;
  return responiveFontSize.clamp(loweLimit, upperLimit);
}

double getScaleFactor(context) {
  // var dispatcher = PlatformDispatcher.instance;
  // var phisiclWidth = dispatcher.views.first.physicalSize.width;
  // var devicePixelratio = dispatcher.views.first.devicePixelRatio;
  // var width = phisiclWidth / devicePixelratio;
  double width = MediaQuery.sizeOf(context).width;
  
  if (width < SizeConfig.tablet) {
    return width / 500;
  } else if (width < SizeConfig.desktop) {
    return width / 1000;
  } else {
    return width / 1920;
  }
}
