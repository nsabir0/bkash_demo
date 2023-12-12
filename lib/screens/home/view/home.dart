import 'package:bkash_demo/constants/app_colors.dart';
import 'package:bkash_demo/constants/app_icons.dart';
import 'package:bkash_demo/utils/custom_styles.dart';
import 'package:bkash_demo/utils/global_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: buildAppBar(context),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(10.w),
            child: Column(
              children: [
                Container(
                  height: 400.w,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      border: Border.all(width: 2.w, color: Colors.black)),
                  child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 4,
                      childAspectRatio: .80.w,
                    ),
                    itemCount: 15,
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: () {
                          GlobalWidget().showToast('UNDER CONSTRUCTION !!!');
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              border:
                                  Border.all(width: 1.w, color: Colors.black)),
                          child: Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.all(15.w),
                                child: Image.asset(AppIcon.sendmoney),
                              ),
                              Center(
                                  child: Text('Send Money',
                                      style: MyTextStyle.smallNormal()))
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
                SizedBox(height: 10.w),
                Container(
                  height: 120.w,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      border: Border.all(width: 2.w, color: Colors.black)),
                  child: const Center(
                    child: Text('My bKash Dashboard'),
                  ),
                ),
                SizedBox(height: 10.w),
                Container(
                  height: 91.w,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      border: Border.all(width: 2.w, color: Colors.black)),
                  child: FittedBox(
                      fit: BoxFit.fitWidth,
                      child: Image.asset(AppIcon.banner2)),
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: GNav(
          selectedIndex: 1,
          iconSize: 35,
          rippleColor: Colors.grey[800]!,
          curve: Curves.easeOutExpo,
          duration: const Duration(milliseconds: 500),
          color: Colors.grey[800], // unselected icon color
          activeColor: AppColor.primary, // selected icon and text color
          tabBackgroundColor: AppColor.primary.withOpacity(0.1),
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
          tabs: const [
            GButton(
              icon: Icons.home,
              text: 'Home',
            ),
            GButton(
              icon: Icons.qr_code,
              text: 'Scan QR',
            ),
            GButton(
              icon: Icons.email,
              text: 'Inbox',
            )
          ],
        ),
      ),
    );
  }

  buildAppBar(BuildContext context) {
    return PreferredSize(
      preferredSize: Size(double.infinity, 80.w),
      child: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          color: AppColor.primary,
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(15.r),
          ),
        ),
        child: Row(
          children: [
            SizedBox(width: 10.w),
            Container(
              width: 50.w,
              height: 50.w,
              decoration: MyDecoration().forCircularContainer(),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(100.r),
                child: FittedBox(
                  fit: BoxFit.cover,
                  child: Image.asset(AppIcon.userphoto),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 12.w, horizontal: 10.w),
              child: Container(
                  decoration: const BoxDecoration(
                      color: AppColor.primary, shape: BoxShape.circle),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 6.w),
                        child: Text(
                          'Nazmus Sakib',
                          style: MyTextStyle.largeNormal(color: Colors.white),
                        ),
                      ),
                      SizedBox(height: 5.w),
                      Expanded(
                        child: Container(
                          padding: EdgeInsets.all(5.w),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.horizontal(
                                left: Radius.circular(20.r),
                                right: Radius.circular(20.r)),
                          ),
                          child: Row(
                            children: [
                              DecoratedBox(
                                decoration: MyDecoration().forCircularContainer(
                                    color: AppColor.primary),
                                child: Padding(
                                  padding: EdgeInsets.all(5.w),
                                  child: Center(
                                    child: Image.asset(AppIcon.taka),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 5.w),
                                child: Text(
                                  'Tap for Balance',
                                  style: MyTextStyle.mediumBold(
                                      color: AppColor.primary),
                                ),
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  )),
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  GlobalWidget().menuIcons(imagePath: AppIcon.rewards),
                  SizedBox(width: 5.w),
                  GlobalWidget().menuIcons(imagePath: AppIcon.menuicon),
                ],
              ),
            ),
            SizedBox(width: 10.w)
          ],
        ),
      ),
    );
  }

  customButton() {
    return Container(
      decoration:
          BoxDecoration(border: Border.all(width: 1.w, color: Colors.black)),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(15.w),
            child: Image.asset(AppIcon.sendmoney),
          ),
          Center(child: Text('Send Money', style: MyTextStyle.smallNormal()))
        ],
      ),
    );
  }
}
