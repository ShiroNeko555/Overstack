import '../notification_page_screen/widgets/notificationpagesection_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:overstackfinalv2/core/app_export.dart';
import 'package:overstackfinalv2/widgets/custom_elevated_button.dart';

class NotificationPageScreen extends StatelessWidget {
  const NotificationPageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 17.h, vertical: 54.v),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                          padding: EdgeInsets.only(left: 9.h),
                          child: Text("Messages",
                              style: CustomTextStyles.displayMedium40)),
                      SizedBox(height: 17.v),
                      _buildChatsSection(context),
                      SizedBox(height: 48.v),
                      _buildNotificationPageSection(context)
                    ])),
            bottomNavigationBar: _buildHomeSection(context)));
  }

  /// Section Widget
  Widget _buildChatsSection(BuildContext context) {
    return Align(
        alignment: Alignment.center,
        child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.h),
            child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Expanded(
                  child: CustomElevatedButton(
                      height: 43.v,
                      text: "Chats",
                      margin: EdgeInsets.only(right: 22.h),
                      buttonStyle: CustomButtonStyles.outlineBlack)),
              Expanded(
                  child: CustomElevatedButton(
                      height: 43.v,
                      text: "Notifications",
                      margin: EdgeInsets.only(left: 22.h),
                      buttonStyle: CustomButtonStyles.outlineBlack))
            ])));
  }

  /// Section Widget
  Widget _buildNotificationPageSection(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(right: 13.h),
        child: ListView.separated(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            separatorBuilder: (context, index) {
              return SizedBox(height: 18.v);
            },
            itemCount: 5,
            itemBuilder: (context, index) {
              return NotificationpagesectionItemWidget();
            }));
  }

  /// Section Widget
  Widget _buildHomeSection(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(left: 20.h, right: 20.h, bottom: 18.v),
        decoration: AppDecoration.fillBluegray10001,
        child: Column(mainAxisSize: MainAxisSize.min, children: [
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            SizedBox(
                height: 44.v,
                width: 46.h,
                child: Stack(alignment: Alignment.topCenter, children: [
                  Align(
                      alignment: Alignment.center,
                      child: GestureDetector(
                          onTap: () {
                            onTapView(context);
                          },
                          child: Container(
                              height: 44.v,
                              width: 46.h,
                              decoration: BoxDecoration(
                                  color: appTheme.whiteA700,
                                  borderRadius: BorderRadius.circular(23.h),
                                  border: Border.all(
                                      color: appTheme.black900,
                                      width: 1.h,
                                      strokeAlign: strokeAlignOutside))))),
                  CustomImageView(
                      imagePath: ImageConstant.imgHome,
                      height: 26.v,
                      width: 30.h,
                      alignment: Alignment.topCenter,
                      margin: EdgeInsets.only(top: 7.v))
                ])),
            SizedBox(
                height: 44.v,
                width: 46.h,
                child: Stack(alignment: Alignment.center, children: [
                  Align(
                      alignment: Alignment.center,
                      child: Container(
                          height: 44.v,
                          width: 46.h,
                          decoration: BoxDecoration(
                              color: appTheme.whiteA700,
                              borderRadius: BorderRadius.circular(23.h),
                              border: Border.all(
                                  color: appTheme.black900,
                                  width: 1.h,
                                  strokeAlign: strokeAlignOutside)))),
                  CustomImageView(
                      imagePath: ImageConstant.imgNotification,
                      height: 27.v,
                      width: 23.h,
                      alignment: Alignment.center)
                ])),
            SizedBox(
                height: 44.v,
                width: 46.h,
                child: Stack(alignment: Alignment.center, children: [
                  Align(
                      alignment: Alignment.center,
                      child: Container(
                          height: 44.v,
                          width: 46.h,
                          decoration: BoxDecoration(
                              color: appTheme.whiteA700,
                              borderRadius: BorderRadius.circular(23.h),
                              border: Border.all(
                                  color: appTheme.black900,
                                  width: 1.h,
                                  strokeAlign: strokeAlignOutside)))),
                  CustomImageView(
                      imagePath: ImageConstant.imgVectorBlack90023x26,
                      height: 23.v,
                      width: 26.h,
                      alignment: Alignment.center)
                ])),
            SizedBox(
                height: 44.v,
                width: 46.h,
                child: Stack(alignment: Alignment.center, children: [
                  Align(
                      alignment: Alignment.center,
                      child: GestureDetector(
                          onTap: () {
                            onTapView1(context);
                          },
                          child: Container(
                              height: 44.v,
                              width: 46.h,
                              decoration: BoxDecoration(
                                  color: appTheme.whiteA700,
                                  borderRadius: BorderRadius.circular(23.h),
                                  border: Border.all(
                                      color: appTheme.black900,
                                      width: 1.h,
                                      strokeAlign: strokeAlignOutside))))),
                  CustomImageView(
                      imagePath: ImageConstant.imgUser,
                      height: 24.v,
                      width: 21.h,
                      alignment: Alignment.center)
                ]))
          ]),
          Padding(
              padding: EdgeInsets.only(left: 8.h, top: 2.v, right: 3.h),
              child:
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Padding(
                    padding: EdgeInsets.only(bottom: 2.v),
                    child: Text("HOME", style: theme.textTheme.bodySmall)),
                Spacer(flex: 39),
                Text("NOTIFICATION", style: theme.textTheme.bodySmall),
                Spacer(flex: 25),
                Padding(
                    padding: EdgeInsets.only(top: 2.v),
                    child:
                        Text("SUBSCRIPTION", style: theme.textTheme.bodySmall)),
                Spacer(flex: 35),
                Text("PROFILE", style: theme.textTheme.bodySmall)
              ]))
        ]));
  }

  /// Navigates to the homePageScreen when the action is triggered.
  onTapView(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.homePageScreen);
  }

  /// Navigates to the profilePageScreen when the action is triggered.
  onTapView1(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.profilePageScreen);
  }
}
