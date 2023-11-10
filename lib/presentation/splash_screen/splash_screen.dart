import 'package:flutter/material.dart';
import 'package:overstackfinalv2/core/app_export.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.teal400.withOpacity(0.9),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(horizontal: 44.h),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 1.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgFloatingIcon,
                      height: 80.v,
                      width: 79.h,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 12.v),
                      child: Text(
                        "OverStack",
                        style: theme.textTheme.displayMedium,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 9.v),
              Text(
                "Your Health, Your Life",
                style: CustomTextStyles.headlineSmallBold,
              ),
              SizedBox(height: 5.v),
            ],
          ),
        ),
      ),
    );
  }
}
