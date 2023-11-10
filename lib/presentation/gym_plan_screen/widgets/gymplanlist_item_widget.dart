import 'package:flutter/material.dart';
import 'package:overstackfinalv2/core/app_export.dart';
import 'package:readmore/readmore.dart';

// ignore: must_be_immutable
class GymplanlistItemWidget extends StatelessWidget {
  const GymplanlistItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 22.h,
        vertical: 17.v,
      ),
      decoration: AppDecoration.fillBluegray10001.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder20,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 2.v),
          CustomImageView(
            imagePath: ImageConstant.imgImage25,
            height: 446.v,
            width: 322.h,
            radius: BorderRadius.circular(
              20.h,
            ),
          ),
          SizedBox(height: 25.v),
          Text(
            "Alex Johnson",
            style: CustomTextStyles.titleLargeSemiBold_1,
          ),
          SizedBox(height: 6.v),
          SizedBox(
            width: 320.h,
            child: ReadMoreText(
              "Alex is a certified personal trainer with over 8 years of experience in strength and conditioning. His specialties include weight training, functional fitness, and high-intensity interval training (HIIT)..... ",
              trimLines: 5,
              colorClickableText: appTheme.green500,
              trimMode: TrimMode.Line,
              trimCollapsedText: "Read more",
              moreStyle: theme.textTheme.bodyMedium,
              lessStyle: theme.textTheme.bodyMedium,
            ),
          ),
          SizedBox(height: 18.v),
          Padding(
            padding: EdgeInsets.only(right: 163.h),
            child: Row(
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgVectorBlueA200,
                  height: 18.adaptSize,
                  width: 18.adaptSize,
                  margin: EdgeInsets.symmetric(vertical: 3.v),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 9.h),
                  child: Text(
                    "Male",
                    style: CustomTextStyles.titleLargeRegular,
                  ),
                ),
                Spacer(),
                CustomImageView(
                  imagePath: ImageConstant.imgStar24,
                  height: 20.adaptSize,
                  width: 20.adaptSize,
                  margin: EdgeInsets.only(top: 4.v),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 6.h,
                    top: 3.v,
                  ),
                  child: Text(
                    "4.5",
                    style: CustomTextStyles.titleMedium18,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
