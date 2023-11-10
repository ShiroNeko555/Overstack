import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:overstackfinalv2/core/app_export.dart';
import 'package:overstackfinalv2/widgets/custom_checkbox_button.dart';
import 'package:overstackfinalv2/widgets/custom_elevated_button.dart';
import 'package:overstackfinalv2/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class MealChoicePurchaseScreen extends StatelessWidget {
  MealChoicePurchaseScreen({Key? key}) : super(key: key);

  TextEditingController addressEditTextController = TextEditingController();

  TextEditingController addressLineOptionalEditTextController =
      TextEditingController();

  TextEditingController enterStateEditTextController = TextEditingController();

  TextEditingController cityEditTextController = TextEditingController();

  TextEditingController countryEditTextController = TextEditingController();

  TextEditingController enterZIPPostcodeEditTextController =
      TextEditingController();

  bool saveCheckBox = false;

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: SizedBox(
                width: double.maxFinite,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _buildThirtyTwoColumn(context),
                      SizedBox(height: 34.v),
                      Padding(
                          padding: EdgeInsets.only(left: 35.h),
                          child: Text("Address Line 1",
                              style: theme.textTheme.titleLarge)),
                      SizedBox(height: 6.v),
                      _buildAddressEditText(context),
                      SizedBox(height: 27.v),
                      Padding(
                          padding: EdgeInsets.only(left: 35.h),
                          child: Text("Address Line 2 (optional)",
                              style: theme.textTheme.titleLarge)),
                      SizedBox(height: 5.v),
                      _buildAddressLineOptionalEditText(context),
                      SizedBox(height: 26.v),
                      Padding(
                          padding: EdgeInsets.only(left: 35.h),
                          child:
                              Text("State", style: theme.textTheme.titleLarge)),
                      SizedBox(height: 3.v),
                      _buildEnterStateEditText(context),
                      SizedBox(height: 27.v),
                      Padding(
                          padding: EdgeInsets.only(left: 38.h),
                          child:
                              Text("City", style: theme.textTheme.titleLarge)),
                      SizedBox(height: 2.v),
                      _buildCityEditText(context),
                      SizedBox(height: 28.v),
                      Padding(
                          padding: EdgeInsets.only(left: 35.h),
                          child: Text("Country",
                              style: theme.textTheme.titleLarge)),
                      SizedBox(height: 4.v),
                      _buildCountryEditText(context),
                      SizedBox(height: 26.v),
                      Padding(
                          padding: EdgeInsets.only(left: 38.h),
                          child: Text("ZIP / Postcode",
                              style: theme.textTheme.titleLarge)),
                      SizedBox(height: 3.v),
                      _buildEnterZIPPostcodeEditText(context),
                      SizedBox(height: 34.v),
                      Align(
                          alignment: Alignment.centerRight,
                          child: Container(
                              width: 112.h,
                              margin: EdgeInsets.only(left: 292.h, right: 26.h),
                              padding: EdgeInsets.symmetric(
                                  horizontal: 13.h, vertical: 8.v),
                              decoration: AppDecoration.outlineBlack9005
                                  .copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder20),
                              child: _buildSaveCheckBox(context))),
                      SizedBox(height: 64.v),
                      _buildPurchaseButton(context),
                      SizedBox(height: 5.v)
                    ]))));
  }

  /// Section Widget
  Widget _buildBackButton(BuildContext context) {
    return CustomElevatedButton(
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
          onTapBackButton(context);
        });
  }

  /// Section Widget
  Widget _buildThirtyTwoColumn(BuildContext context) {
    return Container(
        width: double.maxFinite,
        padding: EdgeInsets.symmetric(horizontal: 35.h, vertical: 55.v),
        decoration: BoxDecoration(
            image: DecorationImage(
                image: fs.Svg(ImageConstant.imgGroup92), fit: BoxFit.cover)),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [SizedBox(height: 22.v), _buildBackButton(context)]));
  }

  /// Section Widget
  Widget _buildAddressEditText(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 35.h, right: 41.h),
        child: CustomTextFormField(
            controller: addressEditTextController,
            hintText: "Enter Address",
            hintStyle: CustomTextStyles.titleMediumGray600,
            alignment: Alignment.center,
            contentPadding:
                EdgeInsets.symmetric(horizontal: 14.h, vertical: 4.v),
            borderDecoration: TextFormFieldStyleHelper.outlineBlackTL151));
  }

  /// Section Widget
  Widget _buildAddressLineOptionalEditText(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 35.h, right: 41.h),
        child: CustomTextFormField(
            controller: addressLineOptionalEditTextController,
            hintText: "Enter Address",
            hintStyle: CustomTextStyles.titleMediumGray600,
            alignment: Alignment.center,
            contentPadding:
                EdgeInsets.symmetric(horizontal: 12.h, vertical: 4.v),
            borderDecoration: TextFormFieldStyleHelper.outlineBlackTL151));
  }

  /// Section Widget
  Widget _buildEnterStateEditText(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 35.h, right: 41.h),
        child: CustomTextFormField(
            controller: enterStateEditTextController,
            hintText: "Enter State",
            hintStyle: CustomTextStyles.titleMediumGray600,
            alignment: Alignment.center,
            contentPadding:
                EdgeInsets.symmetric(horizontal: 12.h, vertical: 4.v),
            borderDecoration: TextFormFieldStyleHelper.outlineBlackTL151));
  }

  /// Section Widget
  Widget _buildCityEditText(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 35.h, right: 41.h),
        child: CustomTextFormField(
            controller: cityEditTextController,
            hintText: "Enter City",
            hintStyle: CustomTextStyles.titleMediumGray600,
            alignment: Alignment.center,
            contentPadding:
                EdgeInsets.symmetric(horizontal: 12.h, vertical: 4.v),
            borderDecoration: TextFormFieldStyleHelper.outlineBlackTL151));
  }

  /// Section Widget
  Widget _buildCountryEditText(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 35.h, right: 41.h),
        child: CustomTextFormField(
            controller: countryEditTextController,
            hintText: "Enter Country",
            hintStyle: CustomTextStyles.titleMediumGray600,
            alignment: Alignment.center,
            contentPadding:
                EdgeInsets.symmetric(horizontal: 12.h, vertical: 4.v),
            borderDecoration: TextFormFieldStyleHelper.outlineBlackTL151));
  }

  /// Section Widget
  Widget _buildEnterZIPPostcodeEditText(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 35.h),
        child: CustomTextFormField(
            width: 205.h,
            controller: enterZIPPostcodeEditTextController,
            hintText: "Enter ZIP/Postcode",
            hintStyle: CustomTextStyles.titleMediumGray600,
            textInputAction: TextInputAction.done,
            contentPadding:
                EdgeInsets.symmetric(horizontal: 12.h, vertical: 4.v),
            borderDecoration: TextFormFieldStyleHelper.outlineBlackTL151));
  }

  /// Section Widget
  Widget _buildSaveCheckBox(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(right: 7.h),
        child: CustomCheckboxButton(
            text: "SAVE",
            value: saveCheckBox,
            padding: EdgeInsets.symmetric(vertical: 1.v),
            onChange: (value) {
              saveCheckBox = value;
            }));
  }

  /// Section Widget
  Widget _buildPurchaseButton(BuildContext context) {
    return CustomElevatedButton(
        height: 70.v,
        width: 280.h,
        text: "Purchase",
        rightIcon: Container(
            margin: EdgeInsets.only(left: 25.h),
            child: CustomImageView(
                imagePath: ImageConstant.imgArrowrightWhiteA70024x24,
                height: 30.adaptSize,
                width: 30.adaptSize)),
        buttonStyle: CustomButtonStyles.outlineBlackTL8,
        buttonTextStyle: CustomTextStyles.headlineSmallBold25,
        alignment: Alignment.center);
  }

  /// Navigates to the mealPlansDetailsScreen when the action is triggered.
  onTapBackButton(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.mealPlansDetailsScreen);
  }
}
