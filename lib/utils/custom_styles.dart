import 'package:bkash_demo/utils/device_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class MyDecoration {
  BoxDecoration forCircularContainer({dynamic color = Colors.white}) {
    return BoxDecoration(color: color, shape: BoxShape.circle);
  }
}

class MyTextStyle {
  //Small Normal Text
  static TextStyle smallNormal({Color color = Colors.black}) {
    return TextStyle(
      color: color,
      fontSize: sizeForPhoneOrTAB(10.sp, 7.sp),
      height: 1.2,
      fontWeight: FontWeight.w500,
      fontFamily: GoogleFonts.poppins().fontFamily,
    );
  }

  //Small Bold Text
  static TextStyle smallBold({Color color = Colors.black}) {
    return TextStyle(
      color: color,
      fontSize: sizeForPhoneOrTAB(10.sp, 7.sp),
      height: 1.2,
      fontWeight: FontWeight.bold,
      fontFamily: GoogleFonts.poppins().fontFamily,
    );
  }

  //Medium Normal Text
  static TextStyle mediumNormal({Color color = Colors.black}) {
    return TextStyle(
      color: color,
      fontSize: sizeForPhoneOrTAB(12.sp, 8.sp),
      height: 1.2,
      fontWeight: FontWeight.w500,
      fontFamily: GoogleFonts.poppins().fontFamily,
    );
  }

  //Medium Bold Text
  static TextStyle mediumBold({Color color = Colors.black}) {
    return TextStyle(
      color: color,
      fontSize: sizeForPhoneOrTAB(12.sp, 8.sp),
      height: 1.2,
      fontWeight: FontWeight.bold,
      fontFamily: GoogleFonts.poppins().fontFamily,
    );
  }

  //Large Normal Text
  static TextStyle largeNormal({Color color = Colors.black}) {
    return TextStyle(
      color: color,
      fontSize: sizeForPhoneOrTAB(14.sp, 11.sp),
      height: 1.2,
      fontWeight: FontWeight.w500,
      fontFamily: GoogleFonts.poppins().fontFamily,
    );
  }

  //Large Bold Text
  static TextStyle largeBold({Color color = Colors.black}) {
    return TextStyle(
      color: color,
      fontSize: sizeForPhoneOrTAB(14.sp, 11.sp),
      height: 1.2,
      fontWeight: FontWeight.bold,
      fontFamily: GoogleFonts.poppins().fontFamily,
    );
  }

  //Extra Large Normal Text
  static TextStyle xlNormal({Color color = Colors.black}) {
    return TextStyle(
      color: color,
      fontSize: sizeForPhoneOrTAB(16.sp, 13.sp),
      height: 1.2,
      fontWeight: FontWeight.w500,
      fontFamily: GoogleFonts.poppins().fontFamily,
    );
  }

  //Extra Large Bold Text
  static TextStyle xlBold({Color color = Colors.black}) {
    return TextStyle(
      color: color,
      fontSize: sizeForPhoneOrTAB(16.sp, 13.sp),
      height: 1.2,
      fontWeight: FontWeight.bold,
      fontFamily: GoogleFonts.poppins().fontFamily,
    );
  }

  // title extra large
  static final titleExtraLarge = GoogleFonts.montserrat(
    //color: lightColorScheme.primary,
    fontSize: 20.sp,
    fontWeight: FontWeight.w500,
  );

  // Title large
  static final titleLarge = GoogleFonts.montserrat(
      //color: lightColorScheme.scrim,
      fontSize: 16.sp,
      fontWeight: FontWeight.w400);

// Title Medium
  static final titleMedium = GoogleFonts.montserrat(
    //color: lightColorScheme.scrim,
    fontSize: 14.sp,
    fontWeight: FontWeight.w400,
  );
}
