import 'package:flutter/material.dart';
import 'package:overstackfinalv2/core/app_export.dart';
import 'package:overstackfinalv2/widgets/custom_elevated_button.dart';

// ignore_for_file: must_be_immutable
class SubscriptionPlanPage extends StatefulWidget {
  const SubscriptionPlanPage({Key? key})
      : super(
          key: key,
        );

  @override
  SubscriptionPlanPageState createState() => SubscriptionPlanPageState();
}

class SubscriptionPlanPageState extends State<SubscriptionPlanPage>
    with AutomaticKeepAliveClientMixin<SubscriptionPlanPage> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: mediaQueryData.size.width,
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 48.v),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 50.h),
                  child: Column(
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 16.h,
                          vertical: 21.v,
                        ),
                        decoration: AppDecoration
                            .gradientSecondaryContainerToCyanA
                            .copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder13,
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 10.h),
                              child: Text(
                                "Recipe Plan",
                                style:
                                    CustomTextStyles.bodyLargeBlack900Regular,
                              ),
                            ),
                            SizedBox(height: 15.v),
                            Container(
                              width: 192.h,
                              margin: EdgeInsets.only(left: 10.h),
                              child: Text(
                                "RM 29.99/month",
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: theme.textTheme.titleMedium,
                              ),
                            ),
                            SizedBox(height: 16.v),
                            Padding(
                              padding: EdgeInsets.only(
                                left: 10.h,
                                right: 53.h,
                              ),
                              child: Row(
                                children: [
                                  CustomImageView(
                                    imagePath: ImageConstant.imgCheckmark,
                                    height: 20.adaptSize,
                                    width: 20.adaptSize,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 10.h),
                                    child: Text(
                                      "Access recomended menu",
                                      style: theme.textTheme.titleMedium,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 14.v),
                            Padding(
                              padding: EdgeInsets.only(left: 10.h),
                              child: Row(
                                children: [
                                  CustomImageView(
                                    imagePath: ImageConstant.imgCheckmark,
                                    height: 20.adaptSize,
                                    width: 20.adaptSize,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 10.h),
                                    child: Text(
                                      "Ad-free menu access",
                                      style: theme.textTheme.titleMedium,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 15.v),
                            Align(
                              alignment: Alignment.center,
                              child: Padding(
                                padding: EdgeInsets.symmetric(horizontal: 10.h),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    CustomImageView(
                                      imagePath: ImageConstant.imgCheckmark,
                                      height: 20.adaptSize,
                                      width: 20.adaptSize,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(left: 10.h),
                                      child: Text(
                                        "Personalized Nutrition Guidance",
                                        style: theme.textTheme.titleMedium,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(height: 15.v),
                            Padding(
                              padding: EdgeInsets.only(
                                left: 10.h,
                                right: 76.h,
                              ),
                              child: Row(
                                children: [
                                  CustomImageView(
                                    imagePath: ImageConstant.imgCheckmark,
                                    height: 20.adaptSize,
                                    width: 20.adaptSize,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 10.h),
                                    child: Text(
                                      "24/7 Customer Support",
                                      style: theme.textTheme.titleMedium,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 41.v),
                            CustomElevatedButton(
                              text: "PURCHASE",
                              rightIcon: Container(
                                margin: EdgeInsets.only(left: 8.h),
                                child: CustomImageView(
                                  imagePath:
                                      ImageConstant.imgArrowrightWhiteA700,
                                  height: 12.v,
                                  width: 7.h,
                                ),
                              ),
                              buttonStyle: CustomButtonStyles.none,
                              decoration: CustomButtonStyles
                                  .gradientPrimaryToPrimaryDecoration,
                              buttonTextStyle:
                                  CustomTextStyles.titleMediumWhiteA700Bold,
                            ),
                            SizedBox(height: 6.v),
                          ],
                        ),
                      ),
                      SizedBox(height: 57.v),
                      Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 16.h,
                          vertical: 21.v,
                        ),
                        decoration:
                            AppDecoration.gradientIndigoAEToCyanA.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder13,
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 10.h),
                              child: Text(
                                "Meal Delivery Plan",
                                style:
                                    CustomTextStyles.bodyLargeBlack900Regular,
                              ),
                            ),
                            SizedBox(height: 14.v),
                            Padding(
                              padding: EdgeInsets.only(
                                left: 10.h,
                                right: 57.h,
                              ),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(bottom: 19.v),
                                    child: Text(
                                      "From",
                                      style: theme.textTheme.titleMedium,
                                    ),
                                  ),
                                  Expanded(
                                    child: Container(
                                      width: 185.h,
                                      margin: EdgeInsets.only(left: 6.h),
                                      child: Text(
                                        "RM 99.99/week",
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                        style: theme.textTheme.titleMedium,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 15.v),
                            Padding(
                              padding: EdgeInsets.only(
                                left: 10.h,
                                right: 50.h,
                              ),
                              child: Row(
                                children: [
                                  CustomImageView(
                                    imagePath: ImageConstant.imgCheckmark,
                                    height: 20.adaptSize,
                                    width: 20.adaptSize,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 10.h),
                                    child: Text(
                                      "Customized Meal Selection",
                                      style: theme.textTheme.titleMedium,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 14.v),
                            Padding(
                              padding: EdgeInsets.only(
                                left: 10.h,
                                right: 41.h,
                              ),
                              child: Row(
                                children: [
                                  CustomImageView(
                                    imagePath: ImageConstant.imgCheckmark,
                                    height: 20.adaptSize,
                                    width: 20.adaptSize,
                                    margin: EdgeInsets.only(bottom: 1.v),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 10.h),
                                    child: Text(
                                      "Home Delivery Convenience",
                                      style: theme.textTheme.titleMedium,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 15.v),
                            Padding(
                              padding: EdgeInsets.only(
                                left: 10.h,
                                right: 67.h,
                              ),
                              child: Row(
                                children: [
                                  CustomImageView(
                                    imagePath: ImageConstant.imgCheckmark,
                                    height: 20.adaptSize,
                                    width: 20.adaptSize,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 10.h),
                                    child: Text(
                                      "Flexible Delivery Options",
                                      style: theme.textTheme.titleMedium,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 15.v),
                            Padding(
                              padding: EdgeInsets.only(
                                left: 10.h,
                                right: 33.h,
                              ),
                              child: _buildFiftyEight(
                                context,
                                userMessage: "Nutritionally Balanced Menus",
                              ),
                            ),
                            SizedBox(height: 14.v),
                            Padding(
                              padding: EdgeInsets.only(
                                left: 10.h,
                                right: 33.h,
                              ),
                              child: _buildFiftyEight(
                                context,
                                userMessage: "Dedicated Customer Support",
                              ),
                            ),
                            SizedBox(height: 37.v),
                            CustomElevatedButton(
                              text: "PURCHASE",
                              rightIcon: Container(
                                margin: EdgeInsets.only(left: 8.h),
                                child: CustomImageView(
                                  imagePath:
                                      ImageConstant.imgArrowrightWhiteA70024x24,
                                  height: 24.adaptSize,
                                  width: 24.adaptSize,
                                ),
                              ),
                              buttonStyle: CustomButtonStyles.none,
                              decoration: CustomButtonStyles
                                  .gradientPrimaryToPrimaryDecoration,
                              buttonTextStyle:
                                  CustomTextStyles.titleMediumWhiteA700Bold,
                            ),
                            SizedBox(height: 9.v),
                          ],
                        ),
                      ),
                      SizedBox(height: 57.v),
                      Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 16.h,
                          vertical: 21.v,
                        ),
                        decoration:
                            AppDecoration.gradientPurpleAEToCyanA.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder13,
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 10.h),
                              child: Text(
                                "Gym Plan",
                                style:
                                    CustomTextStyles.bodyLargeBlack900Regular,
                              ),
                            ),
                            SizedBox(height: 14.v),
                            Padding(
                              padding: EdgeInsets.only(
                                left: 10.h,
                                right: 76.h,
                              ),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(bottom: 19.v),
                                    child: Text(
                                      "From",
                                      style: theme.textTheme.titleMedium,
                                    ),
                                  ),
                                  Expanded(
                                    child: Container(
                                      width: 166.h,
                                      margin: EdgeInsets.only(left: 6.h),
                                      child: Text(
                                        "RM 200/month",
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                        style: theme.textTheme.titleMedium,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 16.v),
                            Align(
                              alignment: Alignment.center,
                              child: Padding(
                                padding: EdgeInsets.only(
                                  left: 10.h,
                                  right: 14.h,
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    CustomImageView(
                                      imagePath: ImageConstant.imgCheckmark,
                                      height: 20.adaptSize,
                                      width: 20.adaptSize,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(left: 10.h),
                                      child: Text(
                                        "Personalized Training Programs",
                                        style: theme.textTheme.titleMedium,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(height: 12.v),
                            Padding(
                              padding: EdgeInsets.only(
                                left: 10.h,
                                right: 39.h,
                              ),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  CustomImageView(
                                    imagePath: ImageConstant.imgCheckmark,
                                    height: 20.adaptSize,
                                    width: 20.adaptSize,
                                    margin: EdgeInsets.only(
                                      top: 1.v,
                                      bottom: 25.v,
                                    ),
                                  ),
                                  Expanded(
                                    child: Container(
                                      width: 218.h,
                                      margin: EdgeInsets.only(left: 10.h),
                                      child: Text(
                                        "Unlimitted Access to Fitness \nFacilities",
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                        style: theme.textTheme.titleMedium,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 14.v),
                            Padding(
                              padding: EdgeInsets.only(left: 10.h),
                              child: Row(
                                children: [
                                  CustomImageView(
                                    imagePath: ImageConstant.imgCheckmark,
                                    height: 20.adaptSize,
                                    width: 20.adaptSize,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 10.h),
                                    child: Text(
                                      "Group Fitness Classes",
                                      style: theme.textTheme.titleMedium,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 14.v),
                            Align(
                              alignment: Alignment.center,
                              child: Padding(
                                padding: EdgeInsets.symmetric(horizontal: 9.h),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    CustomImageView(
                                      imagePath: ImageConstant.imgCheckmark,
                                      height: 20.adaptSize,
                                      width: 20.adaptSize,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(left: 10.h),
                                      child: Text(
                                        "Recovery and Wellness Services",
                                        style: theme.textTheme.titleMedium,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(height: 14.v),
                            Padding(
                              padding: EdgeInsets.only(
                                left: 10.h,
                                right: 33.h,
                              ),
                              child: _buildFiftyEight(
                                context,
                                userMessage: "Dedicated Customer Support",
                              ),
                            ),
                            SizedBox(height: 34.v),
                            CustomElevatedButton(
                              text: "PURCHASE",
                              rightIcon: Container(
                                margin: EdgeInsets.only(left: 8.h),
                                child: CustomImageView(
                                  imagePath:
                                      ImageConstant.imgArrowrightWhiteA70024x24,
                                  height: 24.adaptSize,
                                  width: 24.adaptSize,
                                ),
                              ),
                              buttonStyle: CustomButtonStyles.none,
                              decoration: CustomButtonStyles
                                  .gradientPrimaryToPrimaryDecoration,
                              buttonTextStyle:
                                  CustomTextStyles.titleMediumWhiteA700Bold,
                            ),
                            SizedBox(height: 3.v),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Common widget
  Widget _buildFiftyEight(
    BuildContext context, {
    required String userMessage,
  }) {
    return Row(
      children: [
        CustomImageView(
          imagePath: ImageConstant.imgCheckmark,
          height: 20.adaptSize,
          width: 20.adaptSize,
        ),
        Padding(
          padding: EdgeInsets.only(left: 10.h),
          child: Text(
            userMessage,
            style: theme.textTheme.titleMedium!.copyWith(
              color: appTheme.black900,
            ),
          ),
        ),
      ],
    );
  }
}
