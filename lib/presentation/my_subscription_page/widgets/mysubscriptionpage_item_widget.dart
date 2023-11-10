import 'package:flutter/material.dart';
import 'package:overstackfinalv2/core/app_export.dart';
import 'package:overstackfinalv2/widgets/custom_elevated_button.dart';

// ignore: must_be_immutable
class MysubscriptionpageItemWidget extends StatelessWidget {
  MysubscriptionpageItemWidget({
    Key? key,
    this.onTapView,
  }) : super(
          key: key,
        );

  VoidCallback? onTapView;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 25.h,
        vertical: 16.v,
      ),
      decoration: AppDecoration.gradientSecondaryContainerToCyanA,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 4.h),
            child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "RM29.99",
                    style: CustomTextStyles.bodyMediumRegular14,
                  ),
                  TextSpan(
                    text: "/",
                    style: CustomTextStyles.bodyMediumRegular,
                  ),
                  TextSpan(
                    text: "month",
                    style: CustomTextStyles.bodySmallBlack900Regular,
                  ),
                ],
              ),
              textAlign: TextAlign.left,
            ),
          ),
          SizedBox(height: 7.v),
          Padding(
            padding: EdgeInsets.only(left: 4.h),
            child: Text(
              "Recipe Plan",
              style: theme.textTheme.headlineLarge,
            ),
          ),
          SizedBox(height: 21.v),
          CustomElevatedButton(
            text: "View",
            margin: EdgeInsets.only(left: 1.h),
            rightIcon: Container(
              margin: EdgeInsets.only(left: 12.h),
              child: CustomImageView(
                imagePath: ImageConstant.imgArrowrightWhiteA70024x24,
                height: 24.adaptSize,
                width: 24.adaptSize,
              ),
            ),
            buttonStyle: CustomButtonStyles.none,
            decoration: CustomButtonStyles.gradientPrimaryToPrimaryDecoration,
            buttonTextStyle: CustomTextStyles.titleMediumWhiteA700Bold,
            onPressed: () {
              onTapView!.call();
            },
          ),
          SizedBox(height: 10.v),
        ],
      ),
    );
  }
}
