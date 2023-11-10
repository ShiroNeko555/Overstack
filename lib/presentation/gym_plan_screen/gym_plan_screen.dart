import '../gym_plan_screen/widgets/gymplanlist_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:overstackfinalv2/core/app_export.dart';
import 'package:overstackfinalv2/widgets/custom_elevated_button.dart';

class GymPlanScreen extends StatelessWidget {
  const GymPlanScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  _buildGymPlanButton(context),
                  SizedBox(height: 47.v),
                  _buildGymPlanList(context),
                  SizedBox(height: 40.v)
                ]))));
  }

  /// Section Widget
  Widget _buildGymPlanButton(BuildContext context) {
    return Container(
        width: double.maxFinite,
        padding: EdgeInsets.symmetric(horizontal: 34.h, vertical: 60.v),
        decoration: BoxDecoration(
            image: DecorationImage(
                image: fs.Svg(ImageConstant.imgGroup92), fit: BoxFit.cover)),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 6.v),
              CustomElevatedButton(
                  height: 27.v,
                  width: 136.h,
                  text: "Gym Plan",
                  leftIcon: Container(
                      margin: EdgeInsets.only(right: 13.h),
                      child: CustomImageView(
                          imagePath: ImageConstant.imgVectorBlack90015x23,
                          height: 16.v,
                          width: 23.h)),
                  buttonStyle: CustomButtonStyles.none,
                  buttonTextStyle: CustomTextStyles.titleLargeSemiBold,
                  onPressed: () {
                    onTapGymPlan(context);
                  })
            ]));
  }

  /// Section Widget
  Widget _buildGymPlanList(BuildContext context) {
    return Expanded(
        child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 31.h),
            child: ListView.separated(
                physics: BouncingScrollPhysics(),
                shrinkWrap: true,
                separatorBuilder: (context, index) {
                  return SizedBox(height: 47.v);
                },
                itemCount: 4,
                itemBuilder: (context, index) {
                  return GymplanlistItemWidget();
                })));
  }

  /// Navigates to the mySubscriptionPageTabContainerScreen when the action is triggered.
  onTapGymPlan(BuildContext context) {
    Navigator.pushNamed(
        context, AppRoutes.mySubscriptionPageTabContainerScreen);
  }
}
