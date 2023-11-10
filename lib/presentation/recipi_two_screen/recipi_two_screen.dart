import 'package:flutter/material.dart';
import 'package:overstackfinalv2/core/app_export.dart';
import 'package:overstackfinalv2/widgets/custom_elevated_button.dart';
import 'package:readmore/readmore.dart';

class RecipiTwoScreen extends StatelessWidget {
  const RecipiTwoScreen({Key? key}) : super(key: key);

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
                      appTheme.teal200
                    ])),
                child: SizedBox(
                    width: double.maxFinite,
                    child: Column(children: [
                      SizedBox(height: 38.v),
                      Expanded(
                          child: SingleChildScrollView(
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                            CustomElevatedButton(
                                height: 27.v,
                                width: 85.h,
                                text: "Back",
                                margin: EdgeInsets.only(left: 24.h),
                                leftIcon: Container(
                                    margin: EdgeInsets.only(right: 9.h),
                                    child: CustomImageView(
                                        imagePath: ImageConstant
                                            .imgVectorBlack90015x23,
                                        height: 16.v,
                                        width: 23.h)),
                                buttonStyle: CustomButtonStyles.none,
                                buttonTextStyle:
                                    CustomTextStyles.titleLargeSemiBold,
                                onPressed: () {
                                  onTapBack(context);
                                }),
                            SizedBox(height: 4.v),
                            CustomImageView(
                                imagePath: ImageConstant.img30x25,
                                height: 30.v,
                                width: 25.h,
                                alignment: Alignment.centerRight,
                                margin: EdgeInsets.only(right: 38.h)),
                            SizedBox(height: 40.v),
                            SizedBox(
                                height: 869.v,
                                width: double.maxFinite,
                                child: Stack(
                                    alignment: Alignment.topCenter,
                                    children: [
                                      Align(
                                          alignment: Alignment.bottomCenter,
                                          child: Container(
                                              padding: EdgeInsets.symmetric(
                                                  horizontal: 21.h,
                                                  vertical: 26.v),
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
                                                      CrossAxisAlignment.start,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.end,
                                                  children: [
                                                    SizedBox(height: 132.v),
                                                    Container(
                                                        width: 343.h,
                                                        margin: EdgeInsets.only(
                                                            left: 7.h,
                                                            right: 35.h),
                                                        child: Text(
                                                            "Skinny Chicken and Roasted \nPotato Bowl",
                                                            maxLines: 2,
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            style: CustomTextStyles
                                                                .headlineSmallBlack900SemiBold)),
                                                    SizedBox(height: 21.v),
                                                    Container(
                                                        width: 378.h,
                                                        margin: EdgeInsets.only(
                                                            left: 7.h),
                                                        child: ReadMoreText(
                                                            "This Skinny Chicken and Roasted Potato Bowl is a perfectly balanced meal complete with meat, carbs, and veggies... ",
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
                                                    SizedBox(height: 42.v),
                                                    _buildRecipeDetails(
                                                        context),
                                                    SizedBox(height: 34.v),
                                                    Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                                left: 7.h),
                                                        child: Text(
                                                            "Ingredients",
                                                            style: CustomTextStyles
                                                                .titleMedium18)),
                                                    SizedBox(height: 7.v),
                                                    _buildIngredientsImages(
                                                        context),
                                                    SizedBox(height: 21.v),
                                                    Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                                left: 7.h),
                                                        child: Text(
                                                            "Insturction",
                                                            style: CustomTextStyles
                                                                .titleMedium18)),
                                                    SizedBox(height: 17.v),
                                                    Container(
                                                        width: 370.h,
                                                        margin: EdgeInsets.only(
                                                            left: 13.h),
                                                        child: ReadMoreText(
                                                            "Preheat the oven to 400 degrees. In a large bowl, toss together the potatoes, onions, salt, pepper,1 tablespoon of the olive oil, garlic powder, paprika, and chili powder. Spread in an even layer on a baking sheet and roast for 20-30 minutes, or until fork-tender.\nRemove the potatoes from the oven.... ",
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
                                                    SizedBox(height: 42.v),
                                                    CustomElevatedButton(
                                                        height: 55.v,
                                                        text: "GET THE RECIPE",
                                                        margin: EdgeInsets.only(
                                                            left: 36.h,
                                                            right: 23.h),
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
                                          child: SizedBox(
                                              height: 214.v,
                                              width: 281.h,
                                              child: Stack(
                                                  alignment:
                                                      Alignment.topCenter,
                                                  children: [
                                                    CustomImageView(
                                                        imagePath: ImageConstant
                                                            .imgEllipse18,
                                                        height: 58.v,
                                                        width: 268.h,
                                                        alignment: Alignment
                                                            .bottomCenter),
                                                    CustomImageView(
                                                        imagePath: ImageConstant
                                                            .imgImage11,
                                                        height: 194.v,
                                                        width: 280.h,
                                                        alignment:
                                                            Alignment.topCenter)
                                                  ])))
                                    ]))
                          ])))
                    ])))));
  }

  /// Section Widget
  Widget _buildRecipeDetails(BuildContext context) {
    return Align(
        alignment: Alignment.center,
        child: Padding(
            padding: EdgeInsets.only(left: 7.h, right: 12.h),
            child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              CustomImageView(
                  imagePath: ImageConstant.imgStar23,
                  height: 20.adaptSize,
                  width: 20.adaptSize),
              Padding(
                  padding: EdgeInsets.only(left: 6.h),
                  child: Text("4.6", style: CustomTextStyles.titleMedium18)),
              Spacer(flex: 60),
              Text("505kcal", style: CustomTextStyles.titleMedium18),
              Spacer(flex: 39),
              CustomImageView(
                  imagePath: ImageConstant.img, height: 22.v, width: 18.h),
              Padding(
                  padding: EdgeInsets.only(left: 6.h),
                  child:
                      Text("20-40 min", style: CustomTextStyles.titleMedium18))
            ])));
  }

  /// Section Widget
  Widget _buildIngredientsImages(BuildContext context) {
    return Align(
        alignment: Alignment.center,
        child: Padding(
            padding: EdgeInsets.only(left: 17.h, right: 22.h),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  CustomImageView(
                      imagePath: ImageConstant.imgImage12,
                      height: 40.adaptSize,
                      width: 40.adaptSize,
                      margin: EdgeInsets.only(top: 7.v, bottom: 3.v)),
                  CustomImageView(
                      imagePath: ImageConstant.imgImage13,
                      height: 40.adaptSize,
                      width: 40.adaptSize,
                      margin: EdgeInsets.only(top: 7.v, bottom: 3.v)),
                  CustomImageView(
                      imagePath: ImageConstant.imgImage14,
                      height: 50.v,
                      width: 52.h),
                  CustomImageView(
                      imagePath: ImageConstant.imgImage15,
                      height: 35.v,
                      width: 32.h,
                      margin: EdgeInsets.only(top: 7.v, bottom: 8.v)),
                  CustomImageView(
                      imagePath: ImageConstant.imgImage16,
                      height: 40.adaptSize,
                      width: 40.adaptSize,
                      margin: EdgeInsets.only(top: 7.v, bottom: 3.v))
                ])));
  }

  /// Navigates to the recipePlanScreen when the action is triggered.
  onTapBack(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.recipePlanScreen);
  }
}
