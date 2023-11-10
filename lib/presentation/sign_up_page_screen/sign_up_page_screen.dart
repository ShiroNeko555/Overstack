import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:overstackfinalv2/core/app_export.dart';
import 'package:overstackfinalv2/widgets/custom_outlined_button.dart';
import 'package:overstackfinalv2/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class SignUpPageScreen extends StatelessWidget {
  SignUpPageScreen({Key? key}) : super(key: key);

  TextEditingController priceEditTextController = TextEditingController();

  TextEditingController passwordEditTextController = TextEditingController();

  TextEditingController confirmPasswordEditTextController =
      TextEditingController();

  TextEditingController emailEditTextController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: Form(
                key: _formKey,
                child: SizedBox(
                    width: double.maxFinite,
                    child: Column(children: [
                      _buildFloatingIconRow(context),
                      SizedBox(height: 56.v),
                      _buildPriceEditText(context),
                      SizedBox(height: 14.v),
                      _buildPasswordEditText(context),
                      SizedBox(height: 14.v),
                      _buildConfirmPasswordEditText(context),
                      SizedBox(height: 14.v),
                      _buildEmailEditText(context),
                      SizedBox(height: 34.v),
                      _buildSignUpButton(context),
                      Spacer(),
                      SizedBox(height: 50.v),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                                padding: EdgeInsets.only(top: 2.v),
                                child: Text("Already have an account?",
                                    style: theme.textTheme.bodyLarge)),
                            GestureDetector(
                                onTap: () {
                                  onTapLogInButton(context);
                                },
                                child: Container(
                                    height: 24.v,
                                    width: 60.h,
                                    margin: EdgeInsets.only(left: 16.h),
                                    child: Stack(
                                        alignment: Alignment.bottomCenter,
                                        children: [
                                          Align(
                                              alignment: Alignment.topCenter,
                                              child: Container(
                                                  height: 22.v,
                                                  width: 60.h,
                                                  decoration: BoxDecoration(
                                                      color:
                                                          appTheme.whiteA700))),
                                          Align(
                                              alignment: Alignment.bottomCenter,
                                              child: Text("Log In",
                                                  style: CustomTextStyles
                                                      .titleMediumGreen700
                                                      .copyWith(
                                                          decoration:
                                                              TextDecoration
                                                                  .underline)))
                                        ])))
                          ])
                    ])))));
  }

  /// Section Widget
  Widget _buildFloatingIconRow(BuildContext context) {
    return SizedBox(
        height: 353.v,
        width: double.maxFinite,
        child: Stack(alignment: Alignment.bottomLeft, children: [
          Align(
              alignment: Alignment.topCenter,
              child: Container(
                  width: double.maxFinite,
                  margin: EdgeInsets.only(bottom: 42.v),
                  padding:
                      EdgeInsets.symmetric(horizontal: 44.h, vertical: 95.v),
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: fs.Svg(ImageConstant.imgGroup92),
                          fit: BoxFit.cover)),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomImageView(
                            imagePath: ImageConstant.imgFloatingIcon,
                            height: 80.v,
                            width: 79.h,
                            margin: EdgeInsets.only(bottom: 41.v)),
                        Padding(
                            padding: EdgeInsets.only(top: 12.v, bottom: 53.v),
                            child: Text("OverStack",
                                style: theme.textTheme.displayMedium))
                      ]))),
          Align(
              alignment: Alignment.bottomLeft,
              child: Padding(
                  padding: EdgeInsets.only(left: 20.h),
                  child: Text("Create Account",
                      style: theme.textTheme.displaySmall)))
        ]));
  }

  /// Section Widget
  Widget _buildPriceEditText(BuildContext context) {
    return CustomTextFormField(
        width: 295.h,
        controller: priceEditTextController,
        hintText: "USERNAME",
        prefix: Container(
            padding: EdgeInsets.fromLTRB(11.h, 9.v, 11.h, 12.v),
            margin: EdgeInsets.fromLTRB(16.h, 6.v, 30.h, 6.v),
            decoration: BoxDecoration(
                color: appTheme.blueGray60001.withOpacity(0.5),
                borderRadius: BorderRadius.circular(22.h),
                boxShadow: [
                  BoxShadow(
                      color: appTheme.teal3007f,
                      spreadRadius: 2.h,
                      blurRadius: 2.h,
                      offset: Offset(2, 2))
                ]),
            child: CustomImageView(
                imagePath: ImageConstant.imgUser, height: 24.v, width: 22.h)),
        prefixConstraints: BoxConstraints(maxHeight: 58.v),
        contentPadding: EdgeInsets.only(top: 18.v, right: 30.h, bottom: 18.v));
  }

  /// Section Widget
  Widget _buildPasswordEditText(BuildContext context) {
    return CustomTextFormField(
        width: 295.h,
        controller: passwordEditTextController,
        hintText: "PASSWORD",
        textInputType: TextInputType.visiblePassword,
        prefix: Container(
            padding: EdgeInsets.fromLTRB(12.h, 9.v, 11.h, 12.v),
            margin: EdgeInsets.fromLTRB(16.h, 6.v, 30.h, 6.v),
            decoration: BoxDecoration(
                color: appTheme.blueGray60001.withOpacity(0.5),
                borderRadius: BorderRadius.circular(22.h),
                boxShadow: [
                  BoxShadow(
                      color: appTheme.teal3007f,
                      spreadRadius: 2.h,
                      blurRadius: 2.h,
                      offset: Offset(2, 2))
                ]),
            child: CustomImageView(
                imagePath: ImageConstant.imgLock, height: 24.v, width: 22.h)),
        prefixConstraints: BoxConstraints(maxHeight: 57.v),
        obscureText: true);
  }

  /// Section Widget
  Widget _buildConfirmPasswordEditText(BuildContext context) {
    return CustomTextFormField(
        width: 295.h,
        controller: confirmPasswordEditTextController,
        hintText: "CONFIRM PASSWORD",
        textInputType: TextInputType.visiblePassword,
        prefix: Container(
            padding: EdgeInsets.fromLTRB(12.h, 9.v, 11.h, 12.v),
            margin: EdgeInsets.fromLTRB(16.h, 6.v, 15.h, 6.v),
            decoration: BoxDecoration(
                color: appTheme.blueGray60001.withOpacity(0.5),
                borderRadius: BorderRadius.circular(22.h),
                boxShadow: [
                  BoxShadow(
                      color: appTheme.teal3007f,
                      spreadRadius: 2.h,
                      blurRadius: 2.h,
                      offset: Offset(2, 2))
                ]),
            child: CustomImageView(
                imagePath: ImageConstant.imgLock, height: 24.v, width: 22.h)),
        prefixConstraints: BoxConstraints(maxHeight: 58.v),
        obscureText: true);
  }

  /// Section Widget
  Widget _buildEmailEditText(BuildContext context) {
    return CustomTextFormField(
        width: 295.h,
        controller: emailEditTextController,
        hintText: "ENTER EMAIL",
        textInputAction: TextInputAction.done,
        textInputType: TextInputType.emailAddress,
        prefix: Container(
            margin: EdgeInsets.fromLTRB(16.h, 6.v, 12.h, 7.v),
            child: CustomImageView(
                imagePath: ImageConstant.imgMail,
                height: 45.adaptSize,
                width: 45.adaptSize)),
        prefixConstraints: BoxConstraints(maxHeight: 58.v));
  }

  /// Section Widget
  Widget _buildSignUpButton(BuildContext context) {
    return CustomOutlinedButton(
        width: 124.h,
        text: "Sign up",
        margin: EdgeInsets.only(right: 25.h),
        rightIcon: Container(
            margin: EdgeInsets.only(left: 3.h),
            child: CustomImageView(
                imagePath: ImageConstant.imgMingcutearrowrightfill,
                height: 24.adaptSize,
                width: 24.adaptSize)),
        onPressed: () {
          onTapSignUpButton(context);
        },
        alignment: Alignment.centerRight);
  }

  /// Navigates to the personalDetailsScreen when the action is triggered.
  onTapSignUpButton(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.personalDetailsScreen);
  }

  /// Navigates to the logInPageScreen when the action is triggered.
  onTapLogInButton(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.logInPageScreen);
  }
}
