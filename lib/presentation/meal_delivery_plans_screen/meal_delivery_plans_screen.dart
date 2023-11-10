import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:overstackfinalv2/core/app_export.dart';
import 'package:overstackfinalv2/widgets/app_bar/appbar_leading_image.dart';
import 'package:overstackfinalv2/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:overstackfinalv2/widgets/app_bar/custom_app_bar.dart';
import 'package:overstackfinalv2/widgets/custom_checkbox_button.dart';
import 'package:overstackfinalv2/widgets/custom_elevated_button.dart';
import 'package:overstackfinalv2/widgets/custom_icon_button.dart';
import 'package:overstackfinalv2/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class MealDeliveryPlansScreen extends StatelessWidget {
  MealDeliveryPlansScreen({Key? key}) : super(key: key);

  bool vegan = false;

  bool nonvegan = false;

  TextEditingController priceController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  _buildThirtyEight(context),
                  Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: 14.h, vertical: 15.v),
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            _buildPreference(context),
                            SizedBox(height: 25.v),
                            _buildAllergies(context),
                            SizedBox(height: 28.v),
                            _buildNoOfWeeks(context),
                            SizedBox(height: 30.v),
                            Align(
                                alignment: Alignment.centerLeft,
                                child: Text("*Terms and Conditions applied",
                                    style:
                                        CustomTextStyles.titleSmallBlack900)),
                            SizedBox(height: 4.v)
                          ]))
                ]))));
  }

  /// Section Widget
  Widget _buildThirtyEight(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(vertical: 54.v),
        decoration: BoxDecoration(
            image: DecorationImage(
                image: fs.Svg(ImageConstant.imgGroup92), fit: BoxFit.cover)),
        child: Column(children: [
          SizedBox(height: 42.v),
          CustomAppBar(
              height: 29.v,
              leadingWidth: 47.h,
              leading: AppbarLeadingImage(
                  imagePath: ImageConstant.imgPajamasGoBack,
                  margin: EdgeInsets.only(left: 24.h, bottom: 2.v),
                  onTap: () {
                    onTapBackButton(context);
                  }),
              title: AppbarSubtitleOne(
                  text: "Meal Delivery Plans",
                  margin: EdgeInsets.only(left: 11.h)))
        ]));
  }

  /// Section Widget
  Widget _buildPreference(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 3.h),
        padding: EdgeInsets.symmetric(horizontal: 21.h, vertical: 12.v),
        decoration: AppDecoration.outlineBlack9004
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder30),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Preference", style: CustomTextStyles.titleLargeExtraBold),
              SizedBox(height: 14.v),
              Padding(
                  padding: EdgeInsets.only(right: 2.h),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                            width: 157.h,
                            padding: EdgeInsets.symmetric(vertical: 8.v),
                            decoration: AppDecoration.outlineBlack9005.copyWith(
                                borderRadius:
                                    BorderRadiusStyle.roundedBorder20),
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  CustomCheckboxButton(
                                      text: "Vegan",
                                      value: vegan,
                                      onChange: (value) {
                                        vegan = value;
                                      }),
                                  CustomIconButton(
                                      height: 21.v,
                                      width: 20.h,
                                      padding: EdgeInsets.all(2.h),
                                      decoration:
                                          IconButtonStyleHelper.fillGreen,
                                      child: CustomImageView(
                                          imagePath: ImageConstant.imgTwitter))
                                ])),
                        Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 11.h, vertical: 8.v),
                            decoration: AppDecoration.outlineBlack9005.copyWith(
                                borderRadius:
                                    BorderRadiusStyle.roundedBorder20),
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  CustomCheckboxButton(
                                      text: "Non-vegan",
                                      value: nonvegan,
                                      onChange: (value) {
                                        nonvegan = value;
                                      }),
                                  Padding(
                                      padding: EdgeInsets.only(
                                          left: 8.h, bottom: 2.v),
                                      child: CustomIconButton(
                                          height: 20.adaptSize,
                                          width: 20.adaptSize,
                                          padding: EdgeInsets.all(3.h),
                                          decoration:
                                              IconButtonStyleHelper.fillRed,
                                          child: CustomImageView(
                                              imagePath: ImageConstant
                                                  .imgSettingsBlack90020x20)))
                                ]))
                      ])),
              SizedBox(height: 5.v)
            ]));
  }

  /// Section Widget
  Widget _buildPrice(BuildContext context) {
    return CustomTextFormField(
        controller: priceController,
        hintText: "ENTER ALLERGIES",
        hintStyle: CustomTextStyles.bodyMediumGray600,
        textInputAction: TextInputAction.done,
        contentPadding: EdgeInsets.symmetric(horizontal: 12.h, vertical: 10.v),
        borderDecoration: TextFormFieldStyleHelper.outlineBlackTL20,
        fillColor: appTheme.blueGray10001);
  }

  /// Section Widget
  Widget _buildAllergies(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 3.h),
        padding: EdgeInsets.symmetric(horizontal: 21.h, vertical: 14.v),
        decoration: AppDecoration.outlineBlack9004
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder30),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Allergies", style: CustomTextStyles.titleLargeExtraBold),
              SizedBox(height: 12.v),
              _buildPrice(context),
              SizedBox(height: 3.v)
            ]));
  }

  /// Section Widget
  Widget _buildOneWeek(BuildContext context) {
    return CustomElevatedButton(
        width: 144.h,
        text: "1 Week",
        buttonStyle: CustomButtonStyles.outlineBlackTL24);
  }

  /// Section Widget
  Widget _buildTwoWeeks(BuildContext context) {
    return CustomElevatedButton(
        width: 144.h,
        text: "2 Weeks",
        buttonStyle: CustomButtonStyles.outlineBlackTL24);
  }

  /// Section Widget
  Widget _buildThreeWeeks(BuildContext context) {
    return CustomElevatedButton(
        width: 144.h,
        text: "3 Weeks",
        buttonStyle: CustomButtonStyles.outlineBlackTL24);
  }

  /// Section Widget
  Widget _buildFourWeeks(BuildContext context) {
    return CustomElevatedButton(
        width: 144.h,
        text: "4 Weeks",
        buttonStyle: CustomButtonStyles.outlineBlackTL24);
  }

  /// Section Widget
  Widget _buildPressForMoreDetails(BuildContext context) {
    return CustomElevatedButton(
        height: 44.v,
        width: 233.h,
        text: "Press for more details",
        rightIcon: Container(
            margin: EdgeInsets.only(left: 9.h),
            child: CustomImageView(
                imagePath: ImageConstant.imgArrowrightWhiteA70024x24,
                height: 24.adaptSize,
                width: 24.adaptSize)),
        buttonStyle: CustomButtonStyles.outlineBlackTL20,
        buttonTextStyle: CustomTextStyles.titleMediumWhiteA700,
        onPressed: () {
          onTapPressForMoreDetails(context);
        },
        alignment: Alignment.center);
  }

  /// Section Widget
  Widget _buildNoOfWeeks(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 3.h),
        padding: EdgeInsets.symmetric(horizontal: 21.h, vertical: 18.v),
        decoration: AppDecoration.outlineBlack9004
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder30),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("No. of weeks of meal subscriptions",
                  style: CustomTextStyles.titleLargeExtraBold),
              SizedBox(height: 14.v),
              Padding(
                  padding: EdgeInsets.only(left: 4.h, right: 3.h),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        _buildOneWeek(context),
                        _buildTwoWeeks(context)
                      ])),
              SizedBox(height: 15.v),
              Padding(
                  padding: EdgeInsets.only(left: 4.h, right: 3.h),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        _buildThreeWeeks(context),
                        _buildFourWeeks(context)
                      ])),
              SizedBox(height: 24.v),
              Text("A week of meal subscription includes:",
                  style: theme.textTheme.titleMedium),
              SizedBox(height: 7.v),
              Row(children: [
                CustomImageView(
                    imagePath: ImageConstant.imgCheckmarkBlueGray600,
                    height: 18.adaptSize,
                    width: 18.adaptSize,
                    margin: EdgeInsets.only(bottom: 2.v)),
                Padding(
                    padding: EdgeInsets.only(left: 10.h),
                    child: Text("2 Meals Per Day",
                        style: theme.textTheme.titleMedium))
              ]),
              SizedBox(height: 10.v),
              Row(children: [
                CustomImageView(
                    imagePath: ImageConstant.imgCheckmarkBlueGray600,
                    height: 18.adaptSize,
                    width: 18.adaptSize),
                Padding(
                    padding: EdgeInsets.only(left: 10.h),
                    child: Text("Freshness Guaranteed*",
                        style: theme.textTheme.titleMedium))
              ]),
              SizedBox(height: 14.v),
              Row(children: [
                CustomImageView(
                    imagePath: ImageConstant.imgCheckmarkBlueGray600,
                    height: 18.adaptSize,
                    width: 18.adaptSize,
                    margin: EdgeInsets.only(bottom: 2.v)),
                Padding(
                    padding: EdgeInsets.only(left: 10.h),
                    child: Text("On Time Delivery*",
                        style: theme.textTheme.titleMedium))
              ]),
              SizedBox(height: 5.v),
              _buildPressForMoreDetails(context),
              SizedBox(height: 18.v)
            ]));
  }

  /// Navigates to the mySubscriptionPageTabContainerScreen when the action is triggered.
  onTapBackButton(BuildContext context) {
    Navigator.pushNamed(
        context, AppRoutes.mySubscriptionPageTabContainerScreen);
  }

  /// Navigates to the mealPlansDetailsScreen when the action is triggered.
  onTapPressForMoreDetails(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.mealPlansDetailsScreen);
  }
}
