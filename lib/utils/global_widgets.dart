import 'dart:io';
import 'package:bkash_demo/utils/custom_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';

class GlobalWidget {
  Widget menuIcons({dynamic imagePath}) {
    return Image.asset(
      imagePath,
      width: 30.w,
      height: 30.w,
    );
  }

  //==========Global Snackbar==========
  globalSnackbar(
      {required bool isSuccess, required String title, String message = ''}) {
    return Get.snackbar(
      '',
      '',
      borderRadius: 6,
      snackPosition: SnackPosition.BOTTOM,
      backgroundColor: isSuccess
          ? const Color.fromARGB(120, 0, 128, 0)
          : const Color.fromARGB(120, 255, 0, 13),
      titleText: Text(
        title,
        style: MyTextStyle.mediumBold(color: Colors.white),
      ),
      messageText: Text(
        message,
        style: MyTextStyle.mediumNormal(color: Colors.white),
      ),
    );
  }

  // Global Toast Message
  showToast(String toastText) {
    if (Platform.isIOS) {
      Fluttertoast.showToast(
        msg: toastText,
        fontSize: 16.0,
        webShowClose: true,
        timeInSecForIosWeb: 1,
        textColor: Colors.white,
        gravity: ToastGravity.BOTTOM,
        toastLength: Toast.LENGTH_SHORT,
        backgroundColor: Colors.black54,
      );
    } else {
      Fluttertoast.showToast(
        msg: toastText,
        fontSize: 16.0,
        webShowClose: true,
        textColor: Colors.white,
        gravity: ToastGravity.BOTTOM,
        toastLength: Toast.LENGTH_SHORT,
        backgroundColor: Colors.black54,
      );

      /* fToast.showToast(
        gravity: ToastGravity.BOTTOM,
        toastDuration: const Duration(seconds: 2),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.0),
            color: ColorHelper.themeColorLightBlack,
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Flexible(
                child: Text(
                  toastText,
                  maxLines: 2,
                  textAlign: TextAlign.center,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(fontSize: 16, color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ); */
    }
  }
}
