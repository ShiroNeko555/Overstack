import 'package:flutter/material.dart';
import 'package:overstackfinalv2/core/app_export.dart';
import 'package:overstackfinalv2/widgets/app_bar/appbar_subtitle.dart';
import 'package:overstackfinalv2/widgets/app_bar/appbar_trailing_edittext.dart';
import 'package:overstackfinalv2/widgets/app_bar/custom_app_bar.dart';
import 'package:overstackfinalv2/widgets/custom_elevated_button.dart';

// ignore_for_file: must_be_immutable
class ProfilePageScreen extends StatelessWidget {
  ProfilePageScreen({Key? key}) : super(key: key);

  TextEditingController editButtonController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.teal40001,
            appBar: _buildAppBar(context),
            body: SizedBox(
                width: mediaQueryData.size.width,
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(top: 27.v),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                              padding: EdgeInsets.only(left: 59.h),
                              child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                        height: 85.adaptSize,
                                        width: 85.adaptSize,
                                        padding: EdgeInsets.all(24.h),
                                        decoration: AppDecoration
                                            .outlineTeal3007f
                                            .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .roundedBorder42),
                                        child: CustomImageView(
                                            imagePath: ImageConstant.imgUser,
                                            height: 36.v,
                                            width: 35.h,
                                            alignment: Alignment.center)),
                                    Container(
                                        height: 59.v,
                                        width: 162.h,
                                        margin: EdgeInsets.only(
                                            left: 26.h, top: 8.v, bottom: 17.v),
                                        child: Stack(
                                            alignment: Alignment.topCenter,
                                            children: [
                                              CustomImageView(
                                                  imagePath:
                                                      ImageConstant.imgFilter,
                                                  height: 25.v,
                                                  width: 24.h,
                                                  alignment:
                                                      Alignment.bottomRight),
                                              Align(
                                                  alignment:
                                                      Alignment.topCenter,
                                                  child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.min,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Text("Justin Bieber",
                                                            style: CustomTextStyles
                                                                .headlineSmallBlack900),
                                                        SizedBox(height: 7.v),
                                                        Row(children: [
                                                          CustomImageView(
                                                              imagePath:
                                                                  ImageConstant
                                                                      .imgSettings,
                                                              height:
                                                                  17.adaptSize,
                                                              width:
                                                                  17.adaptSize,
                                                              margin: EdgeInsets
                                                                  .only(
                                                                      bottom:
                                                                          1.v)),
                                                          Padding(
                                                              padding: EdgeInsets
                                                                  .only(
                                                                      left:
                                                                          13.h),
                                                              child: Text(
                                                                  "AGE 22",
                                                                  style: CustomTextStyles
                                                                      .bodyMediumBlack90015_1))
                                                        ])
                                                      ]))
                                            ]))
                                  ])),
                          SizedBox(height: 49.v),
                          SizedBox(
                              height: 730.v,
                              width: double.maxFinite,
                              child: Stack(
                                  alignment: Alignment.topCenter,
                                  children: [
                                    Align(
                                        alignment: Alignment.center,
                                        child: SizedBox(
                                            height: 702.v,
                                            width: double.maxFinite,
                                            child: Stack(
                                                alignment:
                                                    Alignment.bottomCenter,
                                                children: [
                                                  CustomImageView(
                                                      imagePath: ImageConstant
                                                          .imgEllipse21,
                                                      height: 702.v,
                                                      width: 430.h,
                                                      alignment:
                                                          Alignment.center),
                                                  _buildTwentyTwo(context)
                                                ]))),
                                    Align(
                                        alignment: Alignment.topCenter,
                                        child: Container(
                                            margin: EdgeInsets.only(
                                                left: 45.h, right: 51.h),
                                            padding: EdgeInsets.symmetric(
                                                vertical: 17.v),
                                            decoration: AppDecoration
                                                .fillWhiteA700
                                                .copyWith(
                                                    borderRadius:
                                                        BorderRadiusStyle
                                                            .roundedBorder20),
                                            child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  CustomElevatedButton(
                                                      height: 40.v,
                                                      width: 123.h,
                                                      text: "Wallet",
                                                      margin: EdgeInsets.only(
                                                          left: 26.h),
                                                      leftIcon: Container(
                                                          margin:
                                                              EdgeInsets.only(
                                                                  right: 19.h),
                                                          child: CustomImageView(
                                                              imagePath:
                                                                  ImageConstant
                                                                      .imgIonwalletsharp,
                                                              height: 40.v,
                                                              width: 45.h)),
                                                      buttonStyle:
                                                          CustomButtonStyles
                                                              .none,
                                                      onPressed: () {
                                                        onTapWallet(context);
                                                      }),
                                                  SizedBox(height: 15.v),
                                                  Opacity(
                                                      opacity: 0.2,
                                                      child: Divider()),
                                                  SizedBox(height: 11.v),
                                                  Padding(
                                                      padding: EdgeInsets.only(
                                                          left: 26.h),
                                                      child: Row(children: [
                                                        CustomImageView(
                                                            imagePath: ImageConstant
                                                                .imgSearchBlack900,
                                                            height:
                                                                37.adaptSize,
                                                            width:
                                                                37.adaptSize),
                                                        Padding(
                                                            padding:
                                                                EdgeInsets.only(
                                                                    left: 27.h,
                                                                    top: 7.v,
                                                                    bottom:
                                                                        4.v),
                                                            child: Text(
                                                                "Language",
                                                                style: theme
                                                                    .textTheme
                                                                    .titleLarge))
                                                      ])),
                                                  SizedBox(height: 10.v),
                                                  Opacity(
                                                      opacity: 0.2,
                                                      child: Divider()),
                                                  SizedBox(height: 12.v),
                                                  Padding(
                                                      padding: EdgeInsets.only(
                                                          left: 30.h),
                                                      child: Row(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            CustomImageView(
                                                                imagePath:
                                                                    ImageConstant
                                                                        .imgVectorBlack90032x37,
                                                                height: 32.v,
                                                                width: 37.h),
                                                            Padding(
                                                                padding: EdgeInsets
                                                                    .only(
                                                                        left: 28
                                                                            .h,
                                                                        top:
                                                                            2.v,
                                                                        bottom: 4
                                                                            .v),
                                                                child: Text(
                                                                    "Device",
                                                                    style: theme
                                                                        .textTheme
                                                                        .titleLarge))
                                                          ])),
                                                  SizedBox(height: 11.v),
                                                  Opacity(
                                                      opacity: 0.2,
                                                      child: Divider()),
                                                  SizedBox(height: 16.v),
                                                  Padding(
                                                      padding: EdgeInsets.only(
                                                          left: 26.h,
                                                          right: 47.h),
                                                      child: Row(children: [
                                                        CustomImageView(
                                                            imagePath: ImageConstant
                                                                .imgUserBlack900,
                                                            height: 30.v,
                                                            width: 38.h),
                                                        Padding(
                                                            padding:
                                                                EdgeInsets.only(
                                                                    left: 26.h,
                                                                    top: 3.v),
                                                            child: Text(
                                                                "Other User’s Activity",
                                                                style: theme
                                                                    .textTheme
                                                                    .titleLarge))
                                                      ])),
                                                  SizedBox(height: 10.v),
                                                  Opacity(
                                                      opacity: 0.2,
                                                      child: Divider()),
                                                  SizedBox(height: 12.v),
                                                  Padding(
                                                      padding: EdgeInsets.only(
                                                          left: 32.h),
                                                      child: Row(children: [
                                                        CustomImageView(
                                                            imagePath:
                                                                ImageConstant
                                                                    .imgLightBulb,
                                                            height: 35.v,
                                                            width: 24.h),
                                                        Padding(
                                                            padding:
                                                                EdgeInsets.only(
                                                                    left: 34.h,
                                                                    top: 6.v,
                                                                    bottom:
                                                                        3.v),
                                                            child: Text("Help",
                                                                style: theme
                                                                    .textTheme
                                                                    .titleLarge))
                                                      ])),
                                                  SizedBox(height: 11.v),
                                                  Opacity(
                                                      opacity: 0.2,
                                                      child: Divider()),
                                                  SizedBox(height: 12.v),
                                                  Padding(
                                                      padding: EdgeInsets.only(
                                                          left: 26.h),
                                                      child: Row(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            CustomImageView(
                                                                imagePath:
                                                                    ImageConstant
                                                                        .imgEditBlack900,
                                                                height: 33.v,
                                                                width: 35.h),
                                                            Padding(
                                                                padding: EdgeInsets
                                                                    .only(
                                                                        left: 27
                                                                            .h,
                                                                        top:
                                                                            3.v,
                                                                        bottom: 4
                                                                            .v),
                                                                child: Text(
                                                                    "Feedback",
                                                                    style: theme
                                                                        .textTheme
                                                                        .titleLarge))
                                                          ])),
                                                  SizedBox(height: 11.v),
                                                  Opacity(
                                                      opacity: 0.2,
                                                      child: Divider()),
                                                  SizedBox(height: 12.v),
                                                  Padding(
                                                      padding: EdgeInsets.only(
                                                          left: 26.h),
                                                      child: Row(children: [
                                                        CustomImageView(
                                                            imagePath: ImageConstant
                                                                .imgSettingsBlack900,
                                                            height:
                                                                35.adaptSize,
                                                            width:
                                                                35.adaptSize),
                                                        Padding(
                                                            padding:
                                                                EdgeInsets.only(
                                                                    left: 27.h,
                                                                    top: 6.v,
                                                                    bottom:
                                                                        3.v),
                                                            child: Text(
                                                                "Settings",
                                                                style: theme
                                                                    .textTheme
                                                                    .titleLarge))
                                                      ]))
                                                ])))
                                  ]))
                        ])))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        title: AppbarSubtitle(
            text: "Profile", margin: EdgeInsets.only(left: 29.h)),
        actions: [
          AppbarTrailingEdittext(
              margin: EdgeInsets.fromLTRB(24.h, 13.v, 24.h, 12.v),
              hintText: "EDIT",
              controller: editButtonController)
        ]);
  }

  /// Section Widget
  Widget _buildTwentyTwo(BuildContext context) {
    return Align(
        alignment: Alignment.bottomCenter,
        child: Container(
            margin: EdgeInsets.only(bottom: 75.v),
            padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 18.v),
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
                          imagePath: ImageConstant.imgUser,
                          height: 24.v,
                          width: 21.h,
                          alignment: Alignment.center)
                    ]))
              ]),
              SizedBox(height: 2.v),
              Padding(
                  padding: EdgeInsets.only(left: 9.h, right: 3.h),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                            padding: EdgeInsets.only(bottom: 2.v),
                            child:
                                Text("HOME", style: theme.textTheme.bodySmall)),
                        Spacer(flex: 39),
                        Text("NOTIFICATION", style: theme.textTheme.bodySmall),
                        Spacer(flex: 25),
                        Padding(
                            padding: EdgeInsets.only(top: 2.v),
                            child: Text("SUBSCRIPTION",
                                style: theme.textTheme.bodySmall)),
                        Spacer(flex: 35),
                        Text("PROFILE", style: theme.textTheme.bodySmall)
                      ]))
            ])));
  }

  /// Navigates to the homePageScreen when the action is triggered.
  onTapView(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.homePageScreen);
  }

  /// Navigates to the notificationPageScreen when the action is triggered.
  onTapView1(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.notificationPageScreen);
  }

  /// Navigates to the walletPageScreen when the action is triggered.
  onTapWallet(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.walletPageScreen);
  }
}
