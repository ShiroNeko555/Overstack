import '../wallet_reload_screen/widgets/sixtyseven_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:overstackfinalv2/core/app_export.dart';
import 'package:overstackfinalv2/widgets/custom_elevated_button.dart';

class WalletReloadScreen extends StatelessWidget {
  const WalletReloadScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  _buildBackButtonSection(context),
                  SizedBox(height: 38.v),
                  _buildEnterAmountSection(context),
                  SizedBox(height: 29.v),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                          padding: EdgeInsets.only(left: 25.h),
                          child: Text("Selected Card",
                              style:
                                  CustomTextStyles.headlineSmallBlack900_1))),
                  SizedBox(height: 11.v),
                  _buildReloadCardSelectionSection(context),
                  SizedBox(height: 5.v)
                ])),
            bottomNavigationBar: _buildReloadWallet(context)));
  }

  /// Section Widget
  Widget _buildBackButtonSection(BuildContext context) {
    return Container(
        width: double.maxFinite,
        padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 22.v),
        decoration: AppDecoration.fillTeal
            .copyWith(borderRadius: BorderRadiusStyle.customBorderBL50),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              SizedBox(height: 15.v),
              CustomElevatedButton(
                  height: 27.v,
                  width: 85.h,
                  text: "Back",
                  leftIcon: Container(
                      margin: EdgeInsets.only(right: 9.h),
                      child: CustomImageView(
                          imagePath: ImageConstant.imgPajamasGoBack,
                          height: 27.v,
                          width: 23.h)),
                  buttonStyle: CustomButtonStyles.none,
                  buttonTextStyle: CustomTextStyles.titleLargeSemiBold,
                  onPressed: () {
                    onTapBack(context);
                  }),
              SizedBox(height: 27.v),
              Padding(
                  padding: EdgeInsets.only(left: 20.h),
                  child: Text("Reload",
                      style: CustomTextStyles.displayMediumWhiteA700))
            ]));
  }

  /// Section Widget
  Widget _buildEnterAmountSection(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 25.h),
        padding: EdgeInsets.symmetric(horizontal: 19.h, vertical: 22.v),
        decoration: AppDecoration.fillBlueGrayC
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder30),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                  margin: EdgeInsets.only(right: 2.h),
                  decoration: AppDecoration.outlineBlack9001.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder30),
                  child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        SizedBox(height: 21.v),
                        Padding(
                            padding: EdgeInsets.only(left: 18.h),
                            child: Text("Enter Amount",
                                style: CustomTextStyles.displayMediumBlack900)),
                        SizedBox(height: 19.v),
                        Container(
                            width: 340.h,
                            padding: EdgeInsets.symmetric(
                                horizontal: 18.h, vertical: 7.v),
                            decoration: AppDecoration.outlineBlack9002,
                            child: Text("Minimun reload RM 20",
                                style: theme.textTheme.labelLarge))
                      ])),
              SizedBox(height: 33.v),
              Wrap(
                  runSpacing: 22.v,
                  spacing: 22.h,
                  children: List<Widget>.generate(
                      3, (index) => SixtysevenItemWidget())),
              SizedBox(height: 3.v)
            ]));
  }

  /// Section Widget
  Widget _buildReloadCardSelectionSection(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 25.h),
        padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 4.v),
        decoration: AppDecoration.outlineBlack9003
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder30),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              SizedBox(height: 14.v),
              Padding(
                  padding: EdgeInsets.only(left: 3.h),
                  child: Row(children: [
                    Container(
                        margin: EdgeInsets.only(top: 76.v, bottom: 64.v),
                        padding: EdgeInsets.all(2.h),
                        decoration: AppDecoration.fillGray.copyWith(
                            borderRadius: BorderRadiusStyle.circleBorder10),
                        child: Container(
                            height: 16.adaptSize,
                            width: 16.adaptSize,
                            decoration: BoxDecoration(
                                color: appTheme.blueGray10001,
                                borderRadius: BorderRadius.circular(8.h)))),
                    Container(
                        height: 160.v,
                        width: 284.h,
                        margin: EdgeInsets.only(left: 31.h),
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: fs.Svg(ImageConstant.imgGroup163),
                                fit: BoxFit.cover)),
                        child: Stack(alignment: Alignment.topCenter, children: [
                          Align(
                              alignment: Alignment.bottomCenter,
                              child: Container(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 20.h, vertical: 9.v),
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image:
                                              fs.Svg(ImageConstant.imgGroup45),
                                          fit: BoxFit.cover)),
                                  child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        SizedBox(height: 27.v),
                                        CustomImageView(
                                            imagePath: ImageConstant.imgGroup,
                                            height: 6.v,
                                            width: 82.h,
                                            margin: EdgeInsets.only(left: 5.h)),
                                        SizedBox(height: 27.v),
                                        Padding(
                                            padding: EdgeInsets.only(left: 8.h),
                                            child: Row(children: [
                                              CustomImageView(
                                                  imagePath:
                                                      ImageConstant.imgFlag,
                                                  height: 30.v,
                                                  width: 41.h),
                                              CustomImageView(
                                                  imagePath:
                                                      ImageConstant.imgClose,
                                                  height: 30.v,
                                                  width: 40.h,
                                                  margin: EdgeInsets.only(
                                                      left: 8.h)),
                                              Spacer(),
                                              CustomImageView(
                                                  imagePath: ImageConstant
                                                      .imgGroupBlueGray10002,
                                                  height: 15.v,
                                                  width: 86.h,
                                                  margin: EdgeInsets.only(
                                                      top: 15.v))
                                            ]))
                                      ]))),
                          CustomImageView(
                              imagePath:
                                  ImageConstant.imgGroupBlueGray1000217x88,
                              height: 17.v,
                              width: 88.h,
                              alignment: Alignment.topCenter,
                              margin: EdgeInsets.only(top: 23.v)),
                          Opacity(
                              opacity: 0.1,
                              child: CustomImageView(
                                  imagePath:
                                      ImageConstant.imgVectorOnprimarycontainer,
                                  height: 160.v,
                                  width: 141.h,
                                  alignment: Alignment.centerRight)),
                          Align(
                              alignment: Alignment.topCenter,
                              child: Padding(
                                  padding: EdgeInsets.only(top: 45.v),
                                  child: Text("****  ****  1111",
                                      style: CustomTextStyles
                                          .headlineLargeWhiteA700)))
                        ]))
                  ])),
              SizedBox(height: 6.v),
              Padding(
                  padding: EdgeInsets.only(left: 54.h),
                  child: Text("Visa (1111)",
                      style: CustomTextStyles.titleLargeBlack900))
            ]));
  }

  /// Section Widget
  Widget _buildReloadWallet(BuildContext context) {
    return CustomElevatedButton(
        height: 50.v,
        text: "Reload Wallet",
        margin: EdgeInsets.only(left: 30.h, right: 30.h, bottom: 20.v),
        buttonStyle: CustomButtonStyles.outlineBlackTL25,
        buttonTextStyle: theme.textTheme.headlineSmall!,
        onPressed: () {
          onTapReloadWallet(context);
        });
  }

  /// Navigates to the walletPageScreen when the action is triggered.
  onTapBack(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.walletPageScreen);
  }

  /// Navigates to the walletPageScreen when the action is triggered.
  onTapReloadWallet(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.walletPageScreen);
  }
}
