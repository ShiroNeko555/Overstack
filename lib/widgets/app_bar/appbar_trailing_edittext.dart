import 'package:flutter/material.dart';
import 'package:overstackfinalv2/core/app_export.dart';
import 'package:overstackfinalv2/widgets/custom_text_form_field.dart';

// ignore: must_be_immutable
class AppbarTrailingEdittext extends StatelessWidget {
  AppbarTrailingEdittext({
    Key? key,
    this.hintText,
    this.controller,
    this.margin,
  }) : super(
          key: key,
        );

  String? hintText;

  TextEditingController? controller;

  EdgeInsetsGeometry? margin;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: margin ?? EdgeInsets.zero,
      child: CustomTextFormField(
        width: 86.h,
        controller: controller,
        hintText: "EDIT",
        prefix: Container(
          margin: EdgeInsets.only(
            left: 8.h,
            top: 4.v,
            bottom: 3.v,
          ),
          child: CustomImageView(
            imagePath: ImageConstant.imgEdit,
            height: 23.adaptSize,
            width: 23.adaptSize,
          ),
        ),
        prefixConstraints: BoxConstraints(
          maxHeight: 30.v,
        ),
        borderDecoration: TextFormFieldStyleHelper.outlineBlackTL15,
        fillColor: appTheme.blueGray600E5,
      ),
    );
  }
}
