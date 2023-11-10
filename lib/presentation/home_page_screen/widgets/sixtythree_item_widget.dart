import 'package:flutter/material.dart';
import 'package:overstackfinalv2/core/app_export.dart';

// ignore: must_be_immutable
class SixtythreeItemWidget extends StatelessWidget {
  const SixtythreeItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: IntrinsicWidth(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 183.v,
              width: 361.h,
              margin: EdgeInsets.symmetric(vertical: 1.v),
              child: Stack(
                alignment: Alignment.centerRight,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.img1stpic,
                    height: 183.v,
                    width: 349.h,
                    radius: BorderRadius.circular(
                      32.h,
                    ),
                    alignment: Alignment.centerLeft,
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgArrowRight,
                    height: 25.adaptSize,
                    width: 25.adaptSize,
                    alignment: Alignment.centerRight,
                  ),
                ],
              ),
            ),
            CustomImageView(
              imagePath: ImageConstant.img2ndpic,
              height: 184.v,
              width: 348.h,
              radius: BorderRadius.circular(
                32.h,
              ),
              margin: EdgeInsets.only(
                left: 5.h,
                top: 1.v,
              ),
            ),
            CustomImageView(
              imagePath: ImageConstant.img3rdpic,
              height: 184.v,
              width: 348.h,
              radius: BorderRadius.circular(
                32.h,
              ),
              margin: EdgeInsets.only(
                left: 28.h,
                bottom: 1.v,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
