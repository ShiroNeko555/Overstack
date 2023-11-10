import 'package:flutter/material.dart';
import 'package:overstackfinalv2/core/app_export.dart';

class CameraPage extends StatefulWidget {
  const CameraPage({Key? key}) : super(key: key);

  @override
  CameraPageState createState() => CameraPageState();
}

class CameraPageState extends State<CameraPage>
    with AutomaticKeepAliveClientMixin<CameraPage> {
  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            body: Container(
                width: double.maxFinite,
                decoration: AppDecoration.fillWhiteA,
                child: Column(children: [
                  SizedBox(height: 28.v),
                  Column(children: [
                    Container(
                        width: 391.h,
                        margin: EdgeInsets.only(left: 22.h, right: 17.h),
                        padding: EdgeInsets.symmetric(
                            horizontal: 23.h, vertical: 11.v),
                        decoration: AppDecoration.fillBlack.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder33),
                        child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("AVERAGE CALORIES :  ",
                                  style: CustomTextStyles.bodyLargeWhiteA700),
                              SizedBox(height: 5.v),
                              Text("2375.91 calories",
                                  style:
                                      CustomTextStyles.headlineMediumWhiteA700),
                              SizedBox(height: 7.v),
                              Align(
                                  alignment: Alignment.centerRight,
                                  child: Container(
                                      height: 60.v,
                                      width: 167.h,
                                      margin: EdgeInsets.only(right: 3.h),
                                      child: Stack(
                                          alignment: Alignment.bottomLeft,
                                          children: [
                                            Align(
                                                alignment: Alignment.centerLeft,
                                                child: SizedBox(
                                                    height: 60.v,
                                                    child: VerticalDivider(
                                                        width: 3.h,
                                                        thickness: 3.v,
                                                        color: appTheme
                                                            .blueGray100Cc))),
                                            Align(
                                                alignment: Alignment.bottomLeft,
                                                child: Padding(
                                                    padding: EdgeInsets.only(
                                                        bottom: 3.v),
                                                    child: SizedBox(
                                                        child: Divider(
                                                            color: appTheme
                                                                .blueGray100Cc)))),
                                            Align(
                                                alignment: Alignment.center,
                                                child: SizedBox(
                                                    child: Divider(
                                                        color: appTheme
                                                            .blueGray100Cc))),
                                            Align(
                                                alignment:
                                                    Alignment.bottomRight,
                                                child: Padding(
                                                    padding: EdgeInsets.only(
                                                        bottom: 16.v),
                                                    child: SizedBox(
                                                        child: Divider(
                                                            color: appTheme
                                                                .blueGray100Cc,
                                                            endIndent: 14.h)))),
                                            Align(
                                                alignment: Alignment.topLeft,
                                                child: Padding(
                                                    padding: EdgeInsets.only(
                                                        top: 17.v),
                                                    child: SizedBox(
                                                        child: Divider(
                                                            color: appTheme
                                                                .blueGray100Cc,
                                                            indent: 21.h)))),
                                            Align(
                                                alignment:
                                                    Alignment.bottomCenter,
                                                child: SizedBox(
                                                    width: 167.h,
                                                    child: Divider(
                                                        color: appTheme
                                                            .blueGray100Cc)))
                                          ])))
                            ])),
                    SizedBox(height: 18.v),
                    Container(
                        margin: EdgeInsets.only(left: 22.h, right: 17.h),
                        padding: EdgeInsets.symmetric(
                            horizontal: 20.h, vertical: 12.v),
                        decoration: AppDecoration.fillBlack.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder33),
                        child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                  padding: EdgeInsets.only(left: 5.h),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                            padding: EdgeInsets.only(top: 4.v),
                                            child: Text(
                                                "DAILY CALORIES LEFT :  ",
                                                style: CustomTextStyles
                                                    .bodyLargeWhiteA700)),
                                        Container(
                                            height: 14.v,
                                            width: 15.h,
                                            margin:
                                                EdgeInsets.only(bottom: 10.v),
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 4.h, vertical: 3.v),
                                            decoration: AppDecoration
                                                .fillBluegray10001
                                                .copyWith(
                                                    borderRadius:
                                                        BorderRadiusStyle
                                                            .circleBorder7),
                                            child: CustomImageView(
                                                imagePath:
                                                    ImageConstant.imgArrow,
                                                height: 7.v,
                                                width: 5.h,
                                                alignment: Alignment.topLeft))
                                      ])),
                              SizedBox(height: 1.v),
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Padding(
                                      padding: EdgeInsets.only(left: 3.h),
                                      child: Text("980.30 calories",
                                          style: CustomTextStyles
                                              .headlineMediumWhiteA700))),
                              SizedBox(height: 13.v),
                              Card(
                                  clipBehavior: Clip.antiAlias,
                                  elevation: 0,
                                  color: appTheme.blueGray10001,
                                  shape: RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadiusStyle.circleBorder7),
                                  child: Container(
                                      height: 24.v,
                                      width: 333.h,
                                      decoration: AppDecoration
                                          .fillBluegray10001
                                          .copyWith(
                                              borderRadius: BorderRadiusStyle
                                                  .circleBorder7),
                                      child: Stack(
                                          alignment: Alignment.centerRight,
                                          children: [
                                            Align(
                                                alignment: Alignment
                                                    .centerRight,
                                                child: Container(
                                                    height: 24.v,
                                                    width: 34.h,
                                                    margin: EdgeInsets.only(
                                                        right: 73.h),
                                                    decoration: BoxDecoration(
                                                        color: theme.colorScheme
                                                            .primaryContainer,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(
                                                                    9.h)))),
                                            Align(
                                                alignment: Alignment
                                                    .centerRight,
                                                child: Container(
                                                    height: 24.v,
                                                    width: 67.h,
                                                    margin: EdgeInsets.only(
                                                        right: 90.h),
                                                    decoration: BoxDecoration(
                                                        color: appTheme
                                                            .amber600,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(
                                                                    9.h)))),
                                            Align(
                                                alignment: Alignment.centerLeft,
                                                child: Container(
                                                    height: 24.v,
                                                    width: 102.h,
                                                    margin: EdgeInsets.only(
                                                        left: 87.h),
                                                    decoration: BoxDecoration(
                                                        color: appTheme
                                                            .green600,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(
                                                                    9.h)))),
                                            Align(
                                                alignment: Alignment.centerLeft,
                                                child: Container(
                                                    height: 24.v,
                                                    width: 102.h,
                                                    decoration: BoxDecoration(
                                                        color:
                                                            appTheme.indigoA400,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(
                                                                    9.h))))
                                          ])))
                            ])),
                    SizedBox(height: 26.v),
                    Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: 21.h, vertical: 18.v),
                        decoration: AppDecoration.fillBluegray10001,
                        child: Column(children: [
                          Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                SizedBox(
                                    height: 44.v,
                                    width: 46.h,
                                    child: Stack(
                                        alignment: Alignment.topCenter,
                                        children: [
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
                                                          color: appTheme
                                                              .whiteA700,
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      23.h),
                                                          border: Border.all(
                                                              color: appTheme
                                                                  .black900,
                                                              width: 1.h,
                                                              strokeAlign:
                                                                  strokeAlignOutside))))),
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
                                    child: Stack(
                                        alignment: Alignment.center,
                                        children: [
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
                                                          color: appTheme
                                                              .whiteA700,
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      23.h),
                                                          border: Border.all(
                                                              color: appTheme
                                                                  .black900,
                                                              width: 1.h,
                                                              strokeAlign:
                                                                  strokeAlignOutside))))),
                                          CustomImageView(
                                              imagePath:
                                                  ImageConstant.imgNotification,
                                              height: 27.v,
                                              width: 23.h,
                                              alignment: Alignment.center)
                                        ])),
                                SizedBox(
                                    height: 44.v,
                                    width: 46.h,
                                    child: Stack(
                                        alignment: Alignment.center,
                                        children: [
                                          Align(
                                              alignment: Alignment.center,
                                              child: Container(
                                                  height: 44.v,
                                                  width: 46.h,
                                                  decoration: BoxDecoration(
                                                      color: appTheme.whiteA700,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              23.h),
                                                      border: Border.all(
                                                          color:
                                                              appTheme.black900,
                                                          width: 1.h,
                                                          strokeAlign:
                                                              strokeAlignOutside)))),
                                          CustomImageView(
                                              imagePath: ImageConstant
                                                  .imgVectorBlack90023x26,
                                              height: 23.v,
                                              width: 26.h,
                                              alignment: Alignment.center)
                                        ])),
                                SizedBox(
                                    height: 44.v,
                                    width: 46.h,
                                    child: Stack(
                                        alignment: Alignment.center,
                                        children: [
                                          Align(
                                              alignment: Alignment.center,
                                              child: GestureDetector(
                                                  onTap: () {
                                                    onTapView2(context);
                                                  },
                                                  child: Container(
                                                      height: 44.v,
                                                      width: 46.h,
                                                      decoration: BoxDecoration(
                                                          color: appTheme
                                                              .whiteA700,
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      23.h),
                                                          border: Border.all(
                                                              color: appTheme
                                                                  .black900,
                                                              width: 1.h,
                                                              strokeAlign:
                                                                  strokeAlignOutside))))),
                                          CustomImageView(
                                              imagePath: ImageConstant.imgUser,
                                              height: 24.v,
                                              width: 21.h,
                                              alignment: Alignment.center)
                                        ]))
                              ]),
                          SizedBox(height: 2.v),
                          Padding(
                              padding: EdgeInsets.only(left: 8.h, right: 3.h),
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text("HOME",
                                        style: theme.textTheme.bodySmall),
                                    Spacer(flex: 38),
                                    Text("NOTIFICATION",
                                        style: theme.textTheme.bodySmall),
                                    Spacer(flex: 25),
                                    Padding(
                                        padding: EdgeInsets.only(top: 2.v),
                                        child: Text("SUBSCRIPTION",
                                            style: theme.textTheme.bodySmall)),
                                    Spacer(flex: 35),
                                    Text("PROFILE",
                                        style: theme.textTheme.bodySmall)
                                  ]))
                        ]))
                  ])
                ]))));
  }

  /// Navigates to the homePageScreen when the action is triggered.
  onTapView(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.homePageScreen);
  }

  /// Navigates to the notificationPageScreen when the action is triggered.
  onTapView1(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.notificationPageScreen);
  }

  /// Navigates to the profilePageScreen when the action is triggered.
  onTapView2(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.profilePageScreen);
  }
}
