import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:overstackfinalv2/core/app_export.dart';
import 'package:overstackfinalv2/widgets/custom_elevated_button.dart';

class RecipePlanScreen extends StatelessWidget {
  const RecipePlanScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            body: SizedBox(
                width: double.maxFinite,
                child: SingleChildScrollView(
                    child: Column(children: [
                  _buildRecipeMenuSection(context),
                  SizedBox(height: 33.v),
                  Padding(
                      padding: EdgeInsets.only(left: 34.h, right: 30.h),
                      child: Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            _buildRecepimenu1Section(context),
                            CustomImageView(
                                imagePath: ImageConstant.imgStar220x20,
                                height: 20.adaptSize,
                                width: 20.adaptSize,
                                margin: EdgeInsets.only(top: 642.v),
                                onTap: () {
                                  onTapImgImage(context);
                                }),
                            Expanded(
                                child: GestureDetector(
                                    onTap: () {
                                      onTapTxtSkinnyChickenAnd(context);
                                    },
                                    child: Container(
                                        width: 274.h,
                                        margin: EdgeInsets.only(
                                            top: 569.v, bottom: 43.v),
                                        child: Text(
                                            "Skinny Chicken and Roasted Potato Bowl",
                                            maxLines: 2,
                                            overflow: TextOverflow.ellipsis,
                                            style: CustomTextStyles
                                                .titleLargeSemiBold_1)))),
                            CustomImageView(
                                imagePath: ImageConstant.imgImage17,
                                height: 182.v,
                                width: 320.h,
                                radius: BorderRadius.circular(20.h),
                                margin:
                                    EdgeInsets.only(top: 368.v, bottom: 111.v),
                                onTap: () {
                                  onTapImgImageSeventeen(context);
                                }),
                            Spacer(flex: 62),
                            CustomImageView(
                                imagePath: ImageConstant.img,
                                height: 22.v,
                                width: 18.h,
                                margin: EdgeInsets.only(top: 640.v),
                                onTap: () {
                                  onTapImgImage1(context);
                                }),
                            Spacer(flex: 37)
                          ])),
                  _buildSixtynineSection(context),
                  SizedBox(height: 36.v),
                  _buildRecepimenu3Section(context),
                  SizedBox(height: 29.v),
                  SizedBox(
                      height: 38.v,
                      width: 41.h,
                      child: Stack(alignment: Alignment.center, children: [
                        Align(
                            alignment: Alignment.center,
                            child: Container(
                                height: 38.v,
                                width: 41.h,
                                decoration: BoxDecoration(
                                    color: appTheme.blueGray10001,
                                    borderRadius:
                                        BorderRadius.circular(20.h)))),
                        CustomImageView(
                            imagePath: ImageConstant.imgArrowDown,
                            height: 13.v,
                            width: 21.h,
                            alignment: Alignment.center)
                      ])),
                  SizedBox(height: 19.v)
                ])))));
  }

  /// Section Widget
  Widget _buildRecipeMenuSection(BuildContext context) {
    return Container(
        width: double.maxFinite,
        padding: EdgeInsets.symmetric(horizontal: 26.h, vertical: 60.v),
        decoration: BoxDecoration(
            image: DecorationImage(
                image: fs.Svg(ImageConstant.imgGroup92), fit: BoxFit.cover)),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 7.v),
              CustomElevatedButton(
                  height: 27.v,
                  width: 176.h,
                  text: "Recipe Menu",
                  leftIcon: Container(
                      margin: EdgeInsets.only(right: 16.h),
                      child: CustomImageView(
                          imagePath: ImageConstant.imgVectorBlack90015x23,
                          height: 15.v,
                          width: 23.h)),
                  buttonStyle: CustomButtonStyles.none,
                  buttonTextStyle: CustomTextStyles.titleLargeSemiBold,
                  onPressed: () {
                    onTapRecipeMenu(context);
                  })
            ]));
  }

  /// Section Widget
  Widget _buildRecepimenu1Section(BuildContext context) {
    return Expanded(
        child: GestureDetector(
            onTap: () {
              onTapRecepimenu1Section(context);
            },
            child: Container(
                margin: EdgeInsets.only(bottom: 350.v),
                padding: EdgeInsets.symmetric(horizontal: 19.h, vertical: 20.v),
                decoration: AppDecoration.fillBluegray10001
                    .copyWith(borderRadius: BorderRadiusStyle.roundedBorder20),
                child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomImageView(
                          imagePath: ImageConstant.imgImage18,
                          height: 183.v,
                          width: 320.h,
                          radius: BorderRadius.circular(20.h)),
                      SizedBox(height: 21.v),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: EdgeInsets.only(left: 4.h),
                              child: Text("The Vegan Buddha Bowl",
                                  style:
                                      CustomTextStyles.titleLargeSemiBold_1))),
                      SizedBox(height: 17.v),
                      Padding(
                          padding: EdgeInsets.only(left: 4.h),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CustomImageView(
                                    imagePath: ImageConstant.imgStar2,
                                    height: 20.adaptSize,
                                    width: 20.adaptSize),
                                Padding(
                                    padding: EdgeInsets.only(left: 6.h),
                                    child: Text("4.5",
                                        style: CustomTextStyles.titleMedium18)),
                                Spacer(flex: 62),
                                Text("380kcal",
                                    style: CustomTextStyles.titleMedium18),
                                Spacer(flex: 37),
                                CustomImageView(
                                    imagePath: ImageConstant.img,
                                    height: 22.v,
                                    width: 18.h),
                                Padding(
                                    padding: EdgeInsets.only(left: 6.h),
                                    child: Text("20-30 min",
                                        style: CustomTextStyles.titleMedium18))
                              ]))
                    ]))));
  }

  /// Section Widget
  Widget _buildSixtynineSection(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(left: 34.h, right: 30.h),
        padding: EdgeInsets.symmetric(horizontal: 18.h, vertical: 28.v),
        decoration: AppDecoration.fillBluegray10001
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder20),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              GestureDetector(
                  onTap: () {
                    onTapTxtFortySix(context);
                  },
                  child: Padding(
                      padding: EdgeInsets.only(left: 31.h, top: 264.v),
                      child:
                          Text("4.6", style: CustomTextStyles.titleMedium18))),
              GestureDetector(
                  onTap: () {
                    onTapTxtKcal(context);
                  },
                  child: Padding(
                      padding: EdgeInsets.only(top: 264.v),
                      child: Text("505kcal",
                          style: CustomTextStyles.titleMedium18))),
              GestureDetector(
                  onTap: () {
                    onTapTxtTime(context);
                  },
                  child: Padding(
                      padding: EdgeInsets.only(top: 263.v),
                      child: Text("20-40 min",
                          style: CustomTextStyles.titleMedium18)))
            ]));
  }

  /// Section Widget
  Widget _buildRecepimenu3Section(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 31.h),
        padding: EdgeInsets.symmetric(horizontal: 22.h, vertical: 17.v),
        decoration: AppDecoration.fillBluegray10001
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder20),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 2.v),
              CustomImageView(
                  imagePath: ImageConstant.imgImage19,
                  height: 183.v,
                  width: 320.h,
                  radius: BorderRadius.circular(20.h)),
              SizedBox(height: 19.v),
              Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                      padding: EdgeInsets.only(left: 1.h),
                      child: Text("Salmon Avocado Salad",
                          style: CustomTextStyles.titleLargeSemiBold_1))),
              SizedBox(height: 20.v),
              Padding(
                  padding: EdgeInsets.only(left: 1.h),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomImageView(
                            imagePath: ImageConstant.imgStar21,
                            height: 20.adaptSize,
                            width: 20.adaptSize),
                        Padding(
                            padding: EdgeInsets.only(left: 6.h),
                            child: Text("4.7",
                                style: CustomTextStyles.titleMedium18)),
                        Spacer(flex: 61),
                        Text("732kcal", style: CustomTextStyles.titleMedium18),
                        Spacer(flex: 38),
                        CustomImageView(
                            imagePath: ImageConstant.img,
                            height: 22.v,
                            width: 18.h),
                        Padding(
                            padding: EdgeInsets.only(left: 6.h),
                            child: Text("10-20 min",
                                style: CustomTextStyles.titleMedium18))
                      ]))
            ]));
  }

  /// Navigates to the mySubscriptionPageTabContainerScreen when the action is triggered.
  onTapRecipeMenu(BuildContext context) {
    Navigator.pushNamed(
        context, AppRoutes.mySubscriptionPageTabContainerScreen);
  }

  /// Navigates to the recipiOneScreen when the action is triggered.
  onTapRecepimenu1Section(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.recipiOneScreen);
  }

  /// Navigates to the recipiTwoScreen when the action is triggered.
  onTapImgImage(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.recipiTwoScreen);
  }

  /// Navigates to the recipiTwoScreen when the action is triggered.
  onTapTxtSkinnyChickenAnd(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.recipiTwoScreen);
  }

  /// Navigates to the recipiTwoScreen when the action is triggered.
  onTapImgImageSeventeen(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.recipiTwoScreen);
  }

  /// Navigates to the recipiTwoScreen when the action is triggered.
  onTapImgImage1(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.recipiTwoScreen);
  }

  /// Navigates to the recipiTwoScreen when the action is triggered.
  onTapTxtFortySix(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.recipiTwoScreen);
  }

  /// Navigates to the recipiTwoScreen when the action is triggered.
  onTapTxtKcal(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.recipiTwoScreen);
  }

  /// Navigates to the recipiTwoScreen when the action is triggered.
  onTapTxtTime(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.recipiTwoScreen);
  }
}
