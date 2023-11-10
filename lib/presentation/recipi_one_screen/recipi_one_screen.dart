import 'package:flutter/material.dart';
import 'package:overstackfinalv2/core/app_export.dart';
import 'package:overstackfinalv2/widgets/custom_elevated_button.dart';
import 'package:readmore/readmore.dart';

class RecipiOneScreen extends StatelessWidget {
  const RecipiOneScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            extendBody: true,
            extendBodyBehindAppBar: true,
            body: Container(
                width: mediaQueryData.size.width,
                height: mediaQueryData.size.height,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment(0.5, 0),
                        end: Alignment(0.5, 1),
                        colors: [
                      theme.colorScheme.errorContainer,
                      appTheme.teal30097,
                      appTheme.teal200
                    ])),
                child: SizedBox(
                    width: double.maxFinite,
                    child: Column(children: [
                      SizedBox(height: 38.v),
                      Expanded(
                          child: SingleChildScrollView(
                              child: Container(
                                  height: 971.v,
                                  width: double.maxFinite,
                                  margin: EdgeInsets.only(bottom: 1.v),
                                  child: Stack(
                                      alignment: Alignment.topCenter,
                                      children: [
                                        Align(
                                            alignment: Alignment.bottomCenter,
                                            child: Container(
                                                padding: EdgeInsets.symmetric(
                                                    horizontal: 24.h,
                                                    vertical: 57.v),
                                                decoration: AppDecoration
                                                    .fillWhiteA
                                                    .copyWith(
                                                        borderRadius:
                                                            BorderRadiusStyle
                                                                .roundedBorder30),
                                                child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.end,
                                                    children: [
                                                      SizedBox(height: 118.v),
                                                      Padding(
                                                          padding:
                                                              EdgeInsets.only(
                                                                  left: 5.h),
                                                          child: Text(
                                                              "The Vegan Buddha Bowl",
                                                              style: CustomTextStyles
                                                                  .headlineSmallBlack900SemiBold)),
                                                      SizedBox(height: 27.v),
                                                      Container(
                                                          width: 354.h,
                                                          margin:
                                                              EdgeInsets.only(
                                                                  left: 5.h),
                                                          child: ReadMoreText(
                                                              "Fresh Avocado, fluffy quinoa, crispy spiced chickpeas, and mixed greens, Cilantro, Oregano and topped with a mouthwatering red pepper sauce... ",
                                                              trimLines: 3,
                                                              colorClickableText:
                                                                  appTheme
                                                                      .green500,
                                                              trimMode:
                                                                  TrimMode.Line,
                                                              trimCollapsedText:
                                                                  "Read more",
                                                              moreStyle: theme
                                                                  .textTheme
                                                                  .bodyMedium,
                                                              lessStyle: theme
                                                                  .textTheme
                                                                  .bodyMedium)),
                                                      SizedBox(height: 30.v),
                                                      _buildRecipeDetails(
                                                          context),
                                                      SizedBox(height: 37.v),
                                                      Padding(
                                                          padding:
                                                              EdgeInsets.only(
                                                                  left: 5.h),
                                                          child: Text(
                                                              "Ingredients",
                                                              style: CustomTextStyles
                                                                  .titleMedium18)),
                                                      SizedBox(height: 13.v),
                                                      CustomImageView(
                                                          imagePath: ImageConstant
                                                              .imgIngredientsImages,
                                                          height: 42.v,
                                                          width: 347.h,
                                                          alignment:
                                                              Alignment.center),
                                                      SizedBox(height: 22.v),
                                                      Padding(
                                                          padding:
                                                              EdgeInsets.only(
                                                                  left: 5.h),
                                                          child: Text(
                                                              "Insturction",
                                                              style: CustomTextStyles
                                                                  .titleMedium18)),
                                                      SizedBox(height: 19.v),
                                                      Container(
                                                          width: 371.h,
                                                          margin:
                                                              EdgeInsets.only(
                                                                  left: 8.h),
                                                          child: ReadMoreText(
                                                              "Start by cooking the quinoa. Bring 2 cups water to a boil, then add quinoa. Simmer for about 15 minutes until all water is absorbed. \nWhen done, remove from heat and keep covered for about 10 minutes so quinoa can absorb any excess water.... ",
                                                              trimLines: 7,
                                                              colorClickableText:
                                                                  appTheme
                                                                      .green500,
                                                              trimMode:
                                                                  TrimMode.Line,
                                                              trimCollapsedText:
                                                                  "Read more",
                                                              moreStyle: theme
                                                                  .textTheme
                                                                  .bodyMedium,
                                                              lessStyle: theme
                                                                  .textTheme
                                                                  .bodyMedium)),
                                                      SizedBox(height: 33.v),
                                                      CustomElevatedButton(
                                                          height: 55.v,
                                                          text:
                                                              "GET THE RECIPE",
                                                          margin:
                                                              EdgeInsets.only(
                                                                  left: 27.h,
                                                                  right: 26.h),
                                                          buttonStyle:
                                                              CustomButtonStyles
                                                                  .fillGreen,
                                                          buttonTextStyle: theme
                                                              .textTheme
                                                              .headlineSmall!,
                                                          alignment:
                                                              Alignment.center)
                                                    ]))),
                                        Align(
                                            alignment: Alignment.topCenter,
                                            child: Container(
                                                height: 296.v,
                                                width: 280.h,
                                                margin:
                                                    EdgeInsets.only(top: 45.v),
                                                child: Stack(
                                                    alignment:
                                                        Alignment.topCenter,
                                                    children: [
                                                      Align(
                                                          alignment: Alignment
                                                              .bottomCenter,
                                                          child: Container(
                                                              height: 58.v,
                                                              width: 268.h,
                                                              decoration: BoxDecoration(
                                                                  color: theme
                                                                      .colorScheme
                                                                      .primary
                                                                      .withOpacity(
                                                                          1),
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              134.h)))),
                                                      CustomImageView(
                                                          imagePath:
                                                              ImageConstant
                                                                  .imgImage1,
                                                          height: 280.adaptSize,
                                                          width: 280.adaptSize,
                                                          alignment: Alignment
                                                              .topCenter)
                                                    ]))),
                                        CustomImageView(
                                            imagePath: ImageConstant.img30x25,
                                            height: 30.v,
                                            width: 25.h,
                                            alignment: Alignment.topRight,
                                            margin: EdgeInsets.only(
                                                top: 21.v, right: 34.h)),
                                        CustomElevatedButton(
                                            height: 27.v,
                                            width: 85.h,
                                            text: "Back",
                                            margin: EdgeInsets.only(left: 24.h),
                                            leftIcon: Container(
                                                margin:
                                                    EdgeInsets.only(right: 9.h),
                                                child: CustomImageView(
                                                    imagePath: ImageConstant
                                                        .imgPajamasGoBack,
                                                    height: 27.v,
                                                    width: 23.h)),
                                            buttonStyle:
                                                CustomButtonStyles.none,
                                            buttonTextStyle: CustomTextStyles
                                                .titleLargeSemiBold,
                                            onPressed: () {
                                              onTapBack(context);
                                            },
                                            alignment: Alignment.topLeft)
                                      ]))))
                    ])))));
  }

  /// Section Widget
  Widget _buildRecipeDetails(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 5.h, right: 8.h),
        child: Row(children: [
          CustomImageView(
              imagePath: ImageConstant.imgStar22,
              height: 20.adaptSize,
              width: 20.adaptSize),
          Padding(
              padding: EdgeInsets.only(left: 6.h),
              child: Text("4.5", style: CustomTextStyles.titleMedium18)),
          Spacer(flex: 60),
          Text("380kcal", style: CustomTextStyles.titleMedium18),
          Spacer(flex: 39),
          CustomImageView(
              imagePath: ImageConstant.img, height: 22.v, width: 18.h),
          Padding(
              padding: EdgeInsets.only(left: 6.h),
              child: Text("20-30 min", style: CustomTextStyles.titleMedium18))
        ]));
  }

  /// Navigates to the recipePlanScreen when the action is triggered.
  onTapBack(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.recipePlanScreen);
  }
}
