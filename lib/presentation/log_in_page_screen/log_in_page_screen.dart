import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:overstackfinalv2/core/app_export.dart';
import 'package:overstackfinalv2/widgets/custom_outlined_button.dart';
import 'package:overstackfinalv2/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class LogInPageScreen extends StatelessWidget {
  LogInPageScreen({Key? key}) : super(key: key);

  TextEditingController priceController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

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
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          _buildFloatingIconAndOverStack(context),
                          SizedBox(height: 3.v),
                          Padding(
                              padding: EdgeInsets.only(left: 20.h),
                              child: Text("Log In",
                                  style: theme.textTheme.displaySmall)),
                          SizedBox(height: 50.v),
                          Padding(
                              padding: EdgeInsets.only(left: 50.h, right: 69.h),
                              child: CustomTextFormField(
                                  controller: priceController,
                                  hintText: "USERNAME",
                                  prefix: Container(
                                      margin: EdgeInsets.fromLTRB(
                                          23.h, 14.v, 30.h, 14.v),
                                      child: CustomImageView(
                                          imagePath: ImageConstant.imgGroup3,
                                          height: 35.v,
                                          width: 30.h)),
                                  prefixConstraints:
                                      BoxConstraints(maxHeight: 64.v),
                                  contentPadding: EdgeInsets.only(
                                      top: 20.v, right: 30.h, bottom: 20.v))),
                          SizedBox(height: 30.v),
                          Padding(
                              padding: EdgeInsets.only(left: 50.h, right: 69.h),
                              child: CustomTextFormField(
                                  controller: passwordController,
                                  hintText: "PASSWORD",
                                  textInputAction: TextInputAction.done,
                                  textInputType: TextInputType.visiblePassword,
                                  prefix: Container(
                                      margin: EdgeInsets.fromLTRB(
                                          24.h, 15.v, 30.h, 15.v),
                                      child: CustomImageView(
                                          imagePath: ImageConstant.imgLock,
                                          height: 28.v,
                                          width: 27.h)),
                                  prefixConstraints:
                                      BoxConstraints(maxHeight: 64.v),
                                  obscureText: true,
                                  contentPadding: EdgeInsets.only(
                                      top: 20.v, right: 30.h, bottom: 20.v))),
                          SizedBox(height: 20.v),
                          Align(
                              alignment: Alignment.centerRight,
                              child: Container(
                                  height: 19.v,
                                  width: 125.h,
                                  margin: EdgeInsets.only(right: 27.h),
                                  child: Stack(
                                      alignment: Alignment.center,
                                      children: [
                                        Align(
                                            alignment: Alignment.topCenter,
                                            child: Container(
                                                height: 18.v,
                                                width: 125.h,
                                                decoration: BoxDecoration(
                                                    color:
                                                        appTheme.whiteA700))),
                                        Align(
                                            alignment: Alignment.center,
                                            child: Text("Forget password?",
                                                style: CustomTextStyles
                                                    .bodyMediumGreen700))
                                      ]))),
                          SizedBox(height: 43.v),
                          CustomOutlinedButton(
                              width: 114.h,
                              text: "Log In",
                              margin: EdgeInsets.only(right: 27.h),
                              rightIcon: Container(
                                  margin: EdgeInsets.only(left: 4.h),
                                  child: CustomImageView(
                                      imagePath: ImageConstant
                                          .imgMingcutearrowrightfill,
                                      height: 23.v,
                                      width: 24.h)),
                              onPressed: () {
                                onTapLogIn(context);
                              },
                              alignment: Alignment.centerRight),
                          Spacer(),
                          SizedBox(height: 54.v),
                          Align(
                              alignment: Alignment.center,
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Padding(
                                        padding: EdgeInsets.only(bottom: 2.v),
                                        child: Text("Don’t have an account?",
                                            style: theme.textTheme.bodyLarge)),
                                    GestureDetector(
                                        onTap: () {
                                          onTapSignUpButton(context);
                                        },
                                        child: Container(
                                            height: 24.v,
                                            width: 68.h,
                                            margin: EdgeInsets.only(left: 22.h),
                                            child: Stack(
                                                alignment:
                                                    Alignment.bottomCenter,
                                                children: [
                                                  Align(
                                                      alignment:
                                                          Alignment.topCenter,
                                                      child: Container(
                                                          height: 22.v,
                                                          width: 68.h,
                                                          decoration: BoxDecoration(
                                                              color: appTheme
                                                                  .whiteA700))),
                                                  Align(
                                                      alignment: Alignment
                                                          .bottomCenter,
                                                      child: Text("Sign Up",
                                                          style: CustomTextStyles
                                                              .titleMediumGreen700
                                                              .copyWith(
                                                                  decoration:
                                                                      TextDecoration
                                                                          .underline)))
                                                ])))
                                  ]))
                        ])))));
  }

  /// Section Widget
  Widget _buildFloatingIconAndOverStack(BuildContext context) {
    return Container(
        width: double.maxFinite,
        padding: EdgeInsets.symmetric(horizontal: 44.h, vertical: 95.v),
        decoration: BoxDecoration(
            image: DecorationImage(
                image: fs.Svg(ImageConstant.imgGroup92), fit: BoxFit.cover)),
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
                  child:
                      Text("OverStack", style: theme.textTheme.displayMedium))
            ]));
  }

  /// Navigates to the homePageScreen when the action is triggered.
  onTapLogIn(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.homePageScreen);
  }

  /// Navigates to the signUpPageScreen when the action is triggered.
  onTapSignUpButton(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.signUpPageScreen);
  }
}
