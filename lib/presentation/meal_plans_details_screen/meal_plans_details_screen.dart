import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:overstackfinalv2/core/app_export.dart';
import 'package:overstackfinalv2/widgets/custom_elevated_button.dart';

class MealPlansDetailsScreen extends StatelessWidget {
  const MealPlansDetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            body: SizedBox(
                width: double.maxFinite,
                child: SingleChildScrollView(
                    child: Column(children: [
                  _buildDetailsButton(context),
                  SizedBox(height: 70.v),
                  _buildMealSNewUserRow(context),
                  SizedBox(height: 97.v),
                  _buildMealS1WeekRow(context),
                  SizedBox(height: 97.v),
                  _buildMealS2WeeksRow(context),
                  SizedBox(height: 97.v),
                  _buildMealS3WeeksRow(context),
                  SizedBox(height: 97.v),
                  _buildMealS4WeeksRow(context),
                  SizedBox(height: 52.v),
                  Align(
                      alignment: Alignment.centerRight,
                      child: Container(
                          height: 42.v,
                          width: 194.h,
                          margin: EdgeInsets.only(right: 23.h),
                          child:
                              Stack(alignment: Alignment.centerLeft, children: [
                            CustomElevatedButton(
                                height: 42.v,
                                width: 192.h,
                                text: "Continue",
                                buttonStyle: CustomButtonStyles.outlineBlackTL8,
                                buttonTextStyle:
                                    CustomTextStyles.titleLargeWhiteA700,
                                alignment: Alignment.center),
                            CustomImageView(
                                imagePath:
                                    ImageConstant.imgArrowrightWhiteA70024x24,
                                height: 24.adaptSize,
                                width: 24.adaptSize,
                                alignment: Alignment.centerLeft)
                          ]))),
                  SizedBox(height: 66.v)
                ])))));
  }

  /// Section Widget
  Widget _buildDetailsButton(BuildContext context) {
    return Container(
        width: double.maxFinite,
        padding: EdgeInsets.symmetric(horizontal: 23.h, vertical: 55.v),
        decoration: BoxDecoration(
            image: DecorationImage(
                image: fs.Svg(ImageConstant.imgGroup92), fit: BoxFit.cover)),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          SizedBox(height: 42.v),
          CustomElevatedButton(
              height: 27.v,
              width: 115.h,
              text: "Details",
              leftIcon: Container(
                  margin: EdgeInsets.only(right: 9.h),
                  child: CustomImageView(
                      imagePath: ImageConstant.imgPajamasGoBack,
                      height: 25.v,
                      width: 31.h)),
              buttonStyle: CustomButtonStyles.none,
              buttonTextStyle: CustomTextStyles.titleLargeSemiBold,
              onPressed: () {
                onTapDetails(context);
              })
        ]));
  }

  /// Section Widget
  Widget _buildMealSNewUserRow(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 22.h, right: 31.h),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Container(
              margin: EdgeInsets.symmetric(vertical: 82.v),
              padding: EdgeInsets.all(5.h),
              decoration: AppDecoration.fillGray400
                  .copyWith(borderRadius: BorderRadiusStyle.roundedBorder13),
              child: Container(
                  height: 20.adaptSize,
                  width: 20.adaptSize,
                  decoration: BoxDecoration(
                      color: appTheme.whiteA700,
                      borderRadius: BorderRadius.circular(10.h)))),
          Expanded(
              child: Container(
                  margin: EdgeInsets.only(left: 18.h),
                  padding:
                      EdgeInsets.symmetric(horizontal: 26.h, vertical: 20.v),
                  decoration: AppDecoration.gradientSecondaryContainerToCyanA100
                      .copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder13),
                  child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("New User 1st Week Promo!!",
                            style: CustomTextStyles.bodyLargeBlack900Regular),
                        SizedBox(height: 16.v),
                        SizedBox(
                            width: 185.h,
                            child: Text("RM 99.99/week",
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: theme.textTheme.titleMedium)),
                        SizedBox(height: 16.v),
                        _buildFiftyFive(context,
                            mealsPerDay: "2 Meals Per Day"),
                        SizedBox(height: 13.v),
                        Row(children: [
                          CustomImageView(
                              imagePath: ImageConstant.imgCheckmark,
                              height: 20.adaptSize,
                              width: 20.adaptSize,
                              margin: EdgeInsets.only(bottom: 1.v)),
                          Padding(
                              padding: EdgeInsets.only(left: 10.h),
                              child: Text("Free Delivery",
                                  style: theme.textTheme.titleMedium))
                        ]),
                        SizedBox(height: 7.v)
                      ])))
        ]));
  }

  /// Section Widget
  Widget _buildMealS1WeekRow(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 22.h, right: 31.h),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Container(
              margin: EdgeInsets.symmetric(vertical: 82.v),
              padding: EdgeInsets.all(5.h),
              decoration: AppDecoration.fillGray400
                  .copyWith(borderRadius: BorderRadiusStyle.roundedBorder13),
              child: Container(
                  height: 20.adaptSize,
                  width: 20.adaptSize,
                  decoration: BoxDecoration(
                      color: appTheme.whiteA700,
                      borderRadius: BorderRadius.circular(10.h)))),
          Expanded(
              child: Container(
                  margin: EdgeInsets.only(left: 18.h),
                  padding:
                      EdgeInsets.symmetric(horizontal: 22.h, vertical: 20.v),
                  decoration: AppDecoration.gradientIndigoAEToCyanA.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder13),
                  child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                            padding: EdgeInsets.only(left: 4.h),
                            child: Text("1 Week",
                                style:
                                    CustomTextStyles.bodyLargeBlack900Regular)),
                        SizedBox(height: 16.v),
                        Padding(
                            padding: EdgeInsets.only(left: 4.h, right: 43.h),
                            child: _buildFrom(context,
                                from: "From", rmWeek: "RM139.99/week")),
                        SizedBox(height: 16.v),
                        Padding(
                            padding: EdgeInsets.only(left: 4.h),
                            child: _buildFiftyFive(context,
                                mealsPerDay: "2 Meals Per Day")),
                        SizedBox(height: 13.v),
                        Padding(
                            padding: EdgeInsets.only(left: 4.h),
                            child: Row(children: [
                              CustomImageView(
                                  imagePath: ImageConstant.imgCheckmark,
                                  height: 20.adaptSize,
                                  width: 20.adaptSize,
                                  margin: EdgeInsets.only(bottom: 1.v)),
                              Padding(
                                  padding: EdgeInsets.only(left: 10.h),
                                  child: Text("Delivery Fee Charged Acordingly",
                                      style: theme.textTheme.titleMedium))
                            ])),
                        SizedBox(height: 7.v)
                      ])))
        ]));
  }

  /// Section Widget
  Widget _buildMealS2WeeksRow(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 22.h, right: 31.h),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Container(
              margin: EdgeInsets.symmetric(vertical: 82.v),
              padding: EdgeInsets.all(5.h),
              decoration: AppDecoration.fillGray400
                  .copyWith(borderRadius: BorderRadiusStyle.roundedBorder13),
              child: Container(
                  height: 20.adaptSize,
                  width: 20.adaptSize,
                  decoration: BoxDecoration(
                      color: appTheme.whiteA700,
                      borderRadius: BorderRadius.circular(10.h)))),
          Expanded(
              child: Container(
                  margin: EdgeInsets.only(left: 18.h),
                  padding:
                      EdgeInsets.symmetric(horizontal: 13.h, vertical: 20.v),
                  decoration: AppDecoration.gradientPurpleAEToCyanA.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder13),
                  child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                            padding: EdgeInsets.only(left: 13.h),
                            child: Text("2 Weeks",
                                style:
                                    CustomTextStyles.bodyLargeBlack900Regular)),
                        SizedBox(height: 16.v),
                        Padding(
                            padding: EdgeInsets.only(left: 13.h, right: 43.h),
                            child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                      padding: EdgeInsets.only(bottom: 19.v),
                                      child: Text("From",
                                          style: theme.textTheme.titleMedium)),
                                  Expanded(
                                      child: Container(
                                          width: 201.h,
                                          margin: EdgeInsets.only(left: 6.h),
                                          child: Text("RM 134.99/week",
                                              maxLines: 2,
                                              overflow: TextOverflow.ellipsis,
                                              style:
                                                  theme.textTheme.titleMedium)))
                                ])),
                        SizedBox(height: 16.v),
                        Padding(
                            padding: EdgeInsets.only(left: 13.h),
                            child: _buildFiftyFive(context,
                                mealsPerDay: "2 Meals Per Day")),
                        SizedBox(height: 13.v),
                        Padding(
                            padding: EdgeInsets.only(left: 13.h),
                            child: Row(children: [
                              CustomImageView(
                                  imagePath: ImageConstant.imgCheckmark,
                                  height: 20.adaptSize,
                                  width: 20.adaptSize,
                                  margin: EdgeInsets.only(bottom: 1.v)),
                              Padding(
                                  padding: EdgeInsets.only(left: 10.h),
                                  child: Text(
                                      "Delivery Fee Charged Accordingly",
                                      style: theme.textTheme.titleMedium))
                            ])),
                        SizedBox(height: 7.v)
                      ])))
        ]));
  }

  /// Section Widget
  Widget _buildMealS3WeeksRow(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 22.h, right: 31.h),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Container(
              margin: EdgeInsets.symmetric(vertical: 82.v),
              padding: EdgeInsets.all(5.h),
              decoration: AppDecoration.fillGray400
                  .copyWith(borderRadius: BorderRadiusStyle.roundedBorder13),
              child: Container(
                  height: 20.adaptSize,
                  width: 20.adaptSize,
                  decoration: BoxDecoration(
                      color: appTheme.whiteA700,
                      borderRadius: BorderRadius.circular(10.h)))),
          Expanded(
              child: Container(
                  margin: EdgeInsets.only(left: 18.h),
                  padding:
                      EdgeInsets.symmetric(horizontal: 26.h, vertical: 20.v),
                  decoration: AppDecoration.gradientCyanToGreenAE.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder13),
                  child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("3 Weeks",
                            style: CustomTextStyles.bodyLargeBlack900Regular),
                        SizedBox(height: 16.v),
                        Padding(
                            padding: EdgeInsets.only(right: 39.h),
                            child: _buildFrom(context,
                                from: "From", rmWeek: "RM129.99/week")),
                        SizedBox(height: 16.v),
                        _buildFiftyFive(context,
                            mealsPerDay: "2 Meals Per Day"),
                        SizedBox(height: 13.v),
                        _buildCheckmark(context,
                            deliveryFee: "Free Delivery Fee"),
                        SizedBox(height: 7.v)
                      ])))
        ]));
  }

  /// Section Widget
  Widget _buildMealS4WeeksRow(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 22.h, right: 31.h),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Container(
              margin: EdgeInsets.symmetric(vertical: 82.v),
              padding: EdgeInsets.all(5.h),
              decoration: AppDecoration.fillGray400
                  .copyWith(borderRadius: BorderRadiusStyle.roundedBorder13),
              child: Container(
                  height: 20.adaptSize,
                  width: 20.adaptSize,
                  decoration: BoxDecoration(
                      color: appTheme.whiteA700,
                      borderRadius: BorderRadius.circular(10.h)))),
          Expanded(
              child: Container(
                  margin: EdgeInsets.only(left: 18.h),
                  padding:
                      EdgeInsets.symmetric(horizontal: 26.h, vertical: 20.v),
                  decoration: AppDecoration.gradientOnErrorToRedA.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder13),
                  child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("4 Weeks",
                            style: CustomTextStyles.bodyLargeBlack900Regular),
                        SizedBox(height: 16.v),
                        Padding(
                            padding: EdgeInsets.only(right: 44.h),
                            child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                      padding: EdgeInsets.only(bottom: 19.v),
                                      child: Text("From",
                                          style: theme.textTheme.titleMedium)),
                                  Expanded(
                                      child: Container(
                                          width: 187.h,
                                          margin: EdgeInsets.only(left: 6.h),
                                          child: Text("RM119.99/week",
                                              maxLines: 2,
                                              overflow: TextOverflow.ellipsis,
                                              style:
                                                  theme.textTheme.titleMedium)))
                                ])),
                        SizedBox(height: 16.v),
                        _buildFiftyFive(context,
                            mealsPerDay: "2 Meals Per Day"),
                        SizedBox(height: 13.v),
                        _buildCheckmark(context,
                            deliveryFee: "Free Delivery Fee"),
                        SizedBox(height: 7.v)
                      ])))
        ]));
  }

  /// Common widget
  Widget _buildFiftyFive(
    BuildContext context, {
    required String mealsPerDay,
  }) {
    return Row(children: [
      CustomImageView(
          imagePath: ImageConstant.imgCheckmark,
          height: 20.adaptSize,
          width: 20.adaptSize),
      Padding(
          padding: EdgeInsets.only(left: 10.h),
          child: Text(mealsPerDay,
              style: theme.textTheme.titleMedium!
                  .copyWith(color: appTheme.black900)))
    ]);
  }

  /// Common widget
  Widget _buildFrom(
    BuildContext context, {
    required String from,
    required String rmWeek,
  }) {
    return Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Padding(
          padding: EdgeInsets.only(bottom: 19.v),
          child: Text(from,
              style: theme.textTheme.titleMedium!
                  .copyWith(color: appTheme.black900))),
      Expanded(
          child: Container(
              width: 191.h,
              margin: EdgeInsets.only(left: 6.h),
              child: Text(rmWeek,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: theme.textTheme.titleMedium!
                      .copyWith(color: appTheme.black900))))
    ]);
  }

  /// Common widget
  Widget _buildCheckmark(
    BuildContext context, {
    required String deliveryFee,
  }) {
    return Row(children: [
      CustomImageView(
          imagePath: ImageConstant.imgCheckmark,
          height: 20.adaptSize,
          width: 20.adaptSize,
          margin: EdgeInsets.only(bottom: 1.v)),
      Padding(
          padding: EdgeInsets.only(left: 10.h),
          child: Text(deliveryFee,
              style: theme.textTheme.titleMedium!
                  .copyWith(color: appTheme.black900)))
    ]);
  }

  /// Navigates to the mealDeliveryPlansScreen when the action is triggered.
  onTapDetails(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.mealDeliveryPlansScreen);
  }
}
