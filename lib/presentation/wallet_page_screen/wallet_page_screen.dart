import 'package:flutter/material.dart';
import 'package:overstackfinalv2/core/app_export.dart';

class WalletPageScreen extends StatelessWidget {
  const WalletPageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  _buildWalletBalanceSection(context),
                  SizedBox(height: 41.v),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                          padding: EdgeInsets.only(left: 26.h),
                          child: Text("Transaction History",
                              style: CustomTextStyles.titleLargeBold))),
                  SizedBox(height: 15.v),
                  _buildDateSection(context),
                  SizedBox(height: 30.v),
                  Container(
                      width: double.maxFinite,
                      padding: EdgeInsets.symmetric(
                          horizontal: 25.h, vertical: 14.v),
                      decoration: AppDecoration.fillBluegray100011,
                      child: Text("OCTOBER 2023",
                          style: CustomTextStyles.titleSmallBlack900_2)),
                  SizedBox(height: 5.v),
                  _buildReloadViaVisaSection(context)
                ])),
            bottomNavigationBar: _buildHomeSection(context)));
  }

  /// Section Widget
  Widget _buildWalletBalanceSection(BuildContext context) {
    return SizedBox(
        height: 353.v,
        width: double.maxFinite,
        child: Stack(alignment: Alignment.bottomCenter, children: [
          Align(
              alignment: Alignment.topCenter,
              child: Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 26.h, vertical: 57.v),
                  decoration: AppDecoration.fillTeal.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder42),
                  child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Wallet Balance",
                            style: CustomTextStyles.titleLargeBold22),
                        SizedBox(height: 29.v),
                        Text("RM100.00",
                            style: CustomTextStyles
                                .displayMediumWhiteA700SemiBold),
                        SizedBox(height: 49.v)
                      ]))),
          Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                  margin: EdgeInsets.only(left: 25.h, top: 238.v, right: 25.h),
                  padding:
                      EdgeInsets.symmetric(horizontal: 38.h, vertical: 15.v),
                  decoration: AppDecoration.outlineBlack.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder20),
                  child:
                      Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                    GestureDetector(
                        onTap: () {
                          onTapReloadButton(context);
                        },
                        child: Padding(
                            padding: EdgeInsets.only(left: 16.h, top: 1.v),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  CustomImageView(
                                      imagePath:
                                          ImageConstant.imgFloatingIconBlack900,
                                      height: 50.adaptSize,
                                      width: 50.adaptSize),
                                  SizedBox(height: 12.v),
                                  Align(
                                      alignment: Alignment.centerRight,
                                      child: Text("Reload",
                                          style: CustomTextStyles
                                              .titleSmallBlack900_2))
                                ]))),
                    Spacer(flex: 46),
                    Padding(
                        padding: EdgeInsets.only(top: 1.v),
                        child: Column(children: [
                          CustomImageView(
                              imagePath: ImageConstant.imgCreditCard,
                              height: 50.adaptSize,
                              width: 50.adaptSize),
                          SizedBox(height: 13.v),
                          Text("Manage",
                              style: CustomTextStyles.titleSmallBlack900_2)
                        ])),
                    Spacer(flex: 53),
                    Padding(
                        padding: EdgeInsets.only(top: 1.v),
                        child: Column(children: [
                          CustomImageView(
                              imagePath: ImageConstant.imgTransferHorizo,
                              height: 50.adaptSize,
                              width: 50.adaptSize),
                          SizedBox(height: 11.v),
                          Text("Transfer",
                              style: CustomTextStyles.titleSmallBlack900_2)
                        ]))
                  ])))
        ]));
  }

  /// Section Widget
  Widget _buildDateSection(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 21.h),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Card(
              clipBehavior: Clip.antiAlias,
              elevation: 0,
              margin: EdgeInsets.all(0),
              color: appTheme.blueGray400.withOpacity(0.8),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadiusStyle.roundedBorder20),
              child: Container(
                  height: 41.v,
                  width: 231.h,
                  decoration: AppDecoration.fillBluegray400.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder20),
                  child: Stack(alignment: Alignment.center, children: [
                    Align(
                        alignment: Alignment.center,
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                  padding: EdgeInsets.only(top: 2.v),
                                  child: Text("DATE :",
                                      style: CustomTextStyles.titleLargeBold)),
                              Container(
                                  height: 27.v,
                                  width: 131.h,
                                  margin: EdgeInsets.only(left: 10.h),
                                  child: Stack(
                                      alignment: Alignment.center,
                                      children: [
                                        CustomImageView(
                                            imagePath:
                                                ImageConstant.imgRectangle38,
                                            height: 27.v,
                                            width: 131.h,
                                            radius: BorderRadius.circular(13.h),
                                            alignment: Alignment.center),
                                        Align(
                                            alignment: Alignment.center,
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Text("2023-10-24",
                                                      style: theme.textTheme
                                                          .titleSmall),
                                                  CustomImageView(
                                                      imagePath: ImageConstant
                                                          .imgLocation,
                                                      height: 7.v,
                                                      width: 8.h,
                                                      margin: EdgeInsets.only(
                                                          left: 11.h,
                                                          top: 5.v,
                                                          bottom: 6.v))
                                                ]))
                                      ]))
                            ])),
                    Align(
                        alignment: Alignment.center,
                        child: SizedBox(
                            height: 41.v,
                            width: 231.h,
                            child:
                                Stack(alignment: Alignment.center, children: [
                              CustomImageView(
                                  imagePath: ImageConstant.imgRectangle30,
                                  height: 41.v,
                                  width: 231.h,
                                  radius: BorderRadius.circular(15.h),
                                  alignment: Alignment.center),
                              Align(
                                  alignment: Alignment.center,
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Padding(
                                            padding: EdgeInsets.only(top: 2.v),
                                            child: Text("DATE :",
                                                style: CustomTextStyles
                                                    .titleLargeBold)),
                                        Container(
                                            height: 27.v,
                                            width: 131.h,
                                            margin: EdgeInsets.only(left: 10.h),
                                            child: Stack(
                                                alignment: Alignment.centerLeft,
                                                children: [
                                                  CustomImageView(
                                                      imagePath: ImageConstant
                                                          .imgRectangle38,
                                                      height: 27.v,
                                                      width: 131.h,
                                                      radius:
                                                          BorderRadius.circular(
                                                              13.h),
                                                      alignment:
                                                          Alignment.center),
                                                  Align(
                                                      alignment:
                                                          Alignment.centerLeft,
                                                      child: Padding(
                                                          padding:
                                                              EdgeInsets.only(
                                                                  left: 11.h),
                                                          child: Text(
                                                              "2023-10-24",
                                                              style: theme
                                                                  .textTheme
                                                                  .titleSmall)))
                                                ]))
                                      ]))
                            ])))
                  ]))),
          Container(
              height: 41.v,
              width: 143.h,
              margin: EdgeInsets.only(left: 14.h),
              child: Stack(alignment: Alignment.center, children: [
                CustomImageView(
                    imagePath: ImageConstant.imgRectangle30BlueGray400,
                    height: 41.v,
                    width: 143.h,
                    radius: BorderRadius.circular(15.h),
                    alignment: Alignment.center),
                Align(
                    alignment: Alignment.center,
                    child: SizedBox(
                        height: 27.v,
                        width: 124.h,
                        child: Stack(alignment: Alignment.center, children: [
                          CustomImageView(
                              imagePath: ImageConstant.imgRectangle38,
                              height: 27.v,
                              width: 124.h,
                              radius: BorderRadius.circular(13.h),
                              alignment: Alignment.center),
                          Align(
                              alignment: Alignment.center,
                              child: Container(
                                  width: 108.h,
                                  margin:
                                      EdgeInsets.fromLTRB(8.h, 4.v, 8.h, 3.v),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text("ALL",
                                            style: theme.textTheme.titleSmall),
                                        CustomImageView(
                                            imagePath:
                                                ImageConstant.imgLocation,
                                            height: 7.v,
                                            width: 8.h,
                                            margin: EdgeInsets.only(
                                                top: 5.v, bottom: 6.v))
                                      ])))
                        ])))
              ]))
        ]));
  }

  /// Section Widget
  Widget _buildReloadViaVisaSection(BuildContext context) {
    return Container(
        width: double.maxFinite,
        padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 4.v),
        decoration: AppDecoration.outlineBlack900,
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Container(
              width: 96.h,
              margin: EdgeInsets.symmetric(vertical: 1.v),
              child: RichText(
                  text: TextSpan(children: [
                    TextSpan(
                        text: "Reload \n",
                        style: CustomTextStyles.titleSmallBlack900_1),
                    TextSpan(
                        text: "via Visa (1111)",
                        style: CustomTextStyles.bodyMediumBlack900Regular15_1)
                  ]),
                  textAlign: TextAlign.left)),
          Container(
              width: 95.h,
              margin: EdgeInsets.only(left: 191.h, top: 1.v),
              child: RichText(
                  text: TextSpan(children: [
                    TextSpan(
                        text: "+RM100\n",
                        style: CustomTextStyles.bodyMediumBlack900Regular15),
                    TextSpan(
                        text: "24 Oct, 12:00",
                        style: CustomTextStyles.bodyMediumBlack900Regular15_1)
                  ]),
                  textAlign: TextAlign.right))
        ]));
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
                      child: GestureDetector(
                          onTap: () {
                            onTapView2(context);
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

  /// Navigates to the walletReloadScreen when the action is triggered.
  onTapReloadButton(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.walletReloadScreen);
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
