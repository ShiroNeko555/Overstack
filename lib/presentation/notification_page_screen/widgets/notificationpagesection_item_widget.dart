import 'package:flutter/material.dart';
import 'package:overstackfinalv2/core/app_export.dart';
import 'package:overstackfinalv2/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class NotificationpagesectionItemWidget extends StatelessWidget {
  const NotificationpagesectionItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 7.h,
        vertical: 6.v,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(bottom: 6.v),
            child: CustomIconButton(
              height: 50.adaptSize,
              width: 50.adaptSize,
              padding: EdgeInsets.all(7.h),
              child: CustomImageView(
                imagePath: ImageConstant.imgTicket,
              ),
            ),
          ),
          Expanded(
            child: Container(
              width: 299.h,
              margin: EdgeInsets.only(
                left: 24.h,
                bottom: 4.v,
              ),
              child: RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "New User Offer!!! Get 20% off...\n",
                      style: theme.textTheme.titleLarge,
                    ),
                    TextSpan(
                      text: "Use code FITNESS20\n",
                      style: CustomTextStyles.bodyMediumBlack900,
                    ),
                  ],
                ),
                textAlign: TextAlign.left,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
