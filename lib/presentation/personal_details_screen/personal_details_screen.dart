import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:overstackfinalv2/core/app_export.dart';
import 'package:overstackfinalv2/widgets/app_bar/appbar_title.dart';
import 'package:overstackfinalv2/widgets/app_bar/appbar_title_image.dart';
import 'package:overstackfinalv2/widgets/app_bar/custom_app_bar.dart';
import 'package:overstackfinalv2/widgets/custom_outlined_button.dart';
import 'package:overstackfinalv2/widgets/custom_search_view.dart';
import 'package:overstackfinalv2/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class PersonalDetailsScreen extends StatelessWidget {
  PersonalDetailsScreen({Key? key}) : super(key: key);

  TextEditingController heightInputController = TextEditingController();

  TextEditingController weightInputController = TextEditingController();

  TextEditingController searchController = TextEditingController();

  TextEditingController genderInputController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  _buildNinetyFive(context),
                  Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: 24.h, vertical: 44.v),
                      child: Column(children: [
                        Align(
                            alignment: Alignment.centerLeft,
                            child: Container(
                                height: 90.adaptSize,
                                width: 90.adaptSize,
                                margin: EdgeInsets.only(left: 138.h),
                                padding: EdgeInsets.symmetric(
                                    horizontal: 23.h, vertical: 22.v),
                                decoration: AppDecoration.outlineTealF.copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.circleBorder45),
                                child: CustomImageView(
                                    imagePath: ImageConstant.imgUser,
                                    height: 45.v,
                                    width: 43.h,
                                    alignment: Alignment.center))),
                        SizedBox(height: 4.v),
                        Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                                padding: EdgeInsets.only(left: 133.h),
                                child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      CustomImageView(
                                          imagePath: ImageConstant.imgPlus,
                                          height: 14.adaptSize,
                                          width: 14.adaptSize,
                                          margin: EdgeInsets.only(bottom: 5.v)),
                                      Padding(
                                          padding: EdgeInsets.only(left: 6.h),
                                          child: Text("Add photo",
                                              style: CustomTextStyles
                                                  .bodyMediumGray600))
                                    ]))),
                        SizedBox(height: 38.v),
                        _buildHeightInput(context),
                        SizedBox(height: 17.v),
                        _buildWeightInput(context),
                        SizedBox(height: 17.v),
                        CustomSearchView(
                            width: 192.h,
                            controller: searchController,
                            hintText: "BIRTHDAY"),
                        SizedBox(height: 17.v),
                        _buildGenderInput(context),
                        SizedBox(height: 74.v),
                        _buildNext(context),
                        SizedBox(height: 5.v)
                      ]))
                ]))));
  }

  /// Section Widget
  Widget _buildNinetyFive(BuildContext context) {
    return SizedBox(
        height: 293.v,
        width: double.maxFinite,
        child: Stack(alignment: Alignment.bottomLeft, children: [
          Align(
              alignment: Alignment.topCenter,
              child: Container(
                  padding: EdgeInsets.symmetric(vertical: 53.v),
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: fs.Svg(ImageConstant.imgGroup92),
                          fit: BoxFit.cover)),
                  child: Column(mainAxisSize: MainAxisSize.min, children: [
                    SizedBox(height: 65.v),
                    CustomAppBar(
                        height: 80.v,
                        centerTitle: true,
                        title: Row(children: [
                          AppbarTitleImage(
                              imagePath: ImageConstant.imgFloatingIcon),
                          AppbarTitle(
                              text: "OverStack",
                              margin: EdgeInsets.only(
                                  left: 30.h, top: 12.v, bottom: 12.v))
                        ]))
                  ]))),
          Align(
              alignment: Alignment.bottomLeft,
              child: Padding(
                  padding: EdgeInsets.only(left: 24.h),
                  child: Text("Personal Details",
                      style: theme.textTheme.displaySmall)))
        ]));
  }

  /// Section Widget
  Widget _buildHeightInput(BuildContext context) {
    return CustomTextFormField(
        width: 192.h,
        controller: heightInputController,
        hintText: "HEIGHT",
        prefix: Container(
            margin: EdgeInsets.fromLTRB(23.h, 11.v, 24.h, 11.v),
            child: CustomImageView(
                imagePath: ImageConstant.imgSort,
                height: 33.adaptSize,
                width: 33.adaptSize)),
        prefixConstraints: BoxConstraints(maxHeight: 58.v));
  }

  /// Section Widget
  Widget _buildWeightInput(BuildContext context) {
    return CustomTextFormField(
        width: 192.h,
        controller: weightInputController,
        hintText: "WEIGHT",
        prefix: Container(
            margin: EdgeInsets.fromLTRB(23.h, 11.v, 19.h, 11.v),
            child: CustomImageView(
                imagePath: ImageConstant.imgVector,
                height: 33.adaptSize,
                width: 33.adaptSize)),
        prefixConstraints: BoxConstraints(maxHeight: 58.v));
  }

  /// Section Widget
  Widget _buildGenderInput(BuildContext context) {
    return CustomTextFormField(
        width: 192.h,
        controller: genderInputController,
        hintText: "GENDER",
        textInputAction: TextInputAction.done,
        prefix: Container(
            margin: EdgeInsets.fromLTRB(23.h, 12.v, 14.h, 12.v),
            child: CustomImageView(
                imagePath: ImageConstant.imgVectorBlack900,
                height: 32.v,
                width: 33.h)),
        prefixConstraints: BoxConstraints(maxHeight: 58.v));
  }

  /// Section Widget
  Widget _buildNext(BuildContext context) {
    return CustomOutlinedButton(
        width: 124.h,
        text: "Next",
        rightIcon: Container(
            margin: EdgeInsets.only(left: 9.h),
            child: CustomImageView(
                imagePath: ImageConstant.imgMingcutearrowrightfill,
                height: 24.adaptSize,
                width: 24.adaptSize)),
        buttonStyle: CustomButtonStyles.outlineTealTL16,
        onPressed: () {
          onTapNext(context);
        },
        alignment: Alignment.centerRight);
  }

  /// Navigates to the homePageScreen when the action is triggered.
  onTapNext(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.homePageScreen);
  }
}
