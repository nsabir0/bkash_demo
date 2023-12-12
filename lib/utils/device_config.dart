import 'package:flutter/material.dart';

enum DeviceTypes { phone, tablet, desktop }

class AppServices {
  static bool validateString(String value) {
    if (value.isEmpty) {
      return false;
    } else {
      return true;
    }
  }

  static String getCurrentDate() {
    DateTime now = DateTime.now();
    DateTime date = DateTime(now.year, now.month, now.day);
    String currentDate = date.toString().split(' ')[0];

    /// Returns current date (Example: 2021-10-25)

    return currentDate;
  }

  static String getCurrentDateTime() {
    DateTime now = DateTime.now();
    DateTime date = DateTime(
        now.year, now.month, now.day, now.hour, now.minute, now.second);

    String currentDate = date.toString();

    return currentDate;
  }

  static String getPreviousDate(int diff) {
    DateTime now = DateTime.now();
    DateTime date = DateTime(now.year, now.month, now.day - diff);
    String previousDate = date.toString().split(' ')[0];

    return previousDate;
  }

  static DeviceTypes getDeviceType() {
    final data = MediaQueryData.fromView(
        WidgetsBinding.instance.platformDispatcher.views.single);
    if (data.size.shortestSide < 550) {
      return DeviceTypes.phone;
    } else if (data.size.shortestSide > 550 && data.size.shortestSide <= 800) {
      return DeviceTypes.tablet;
    } else {
      return DeviceTypes.desktop;
    }
    // return data.size.shortestSide < 550 ? DeviceType.phone : DeviceType.tablet;
  }
}

sizeForPhoneOrTAB(var phoneSize, var tabSize) {
  var size =
      AppServices.getDeviceType() == DeviceTypes.phone ? phoneSize : tabSize;
  return size;
}

sizeForPhoneOrTabOrDesktop(var phoneSize, var tabSize, var desktopSize) {
  var size = phoneSize;
  if (AppServices.getDeviceType() == DeviceTypes.phone) size = phoneSize;
  if (AppServices.getDeviceType() == DeviceTypes.tablet) size = tabSize;
  if (AppServices.getDeviceType() == DeviceTypes.desktop) size = desktopSize;
  return size;
}
