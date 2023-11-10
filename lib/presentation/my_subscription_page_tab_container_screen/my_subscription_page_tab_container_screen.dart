import 'package:flutter/material.dart';
import 'package:overstackfinalv2/core/app_export.dart';
import 'package:overstackfinalv2/presentation/my_subscription_page/my_subscription_page.dart';
import 'package:overstackfinalv2/presentation/subscription_plan_page/subscription_plan_page.dart';
import 'package:overstackfinalv2/widgets/custom_elevated_button.dart';

class MySubscriptionPageTabContainerScreen extends StatefulWidget {
  const MySubscriptionPageTabContainerScreen({Key? key})
      : super(
          key: key,
        );

  @override
  MySubscriptionPageTabContainerScreenState createState() =>
      MySubscriptionPageTabContainerScreenState();
}

class MySubscriptionPageTabContainerScreenState
    extends State<MySubscriptionPageTabContainerScreen>
    with TickerProviderStateMixin {
  late TabController tabviewController;

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              SizedBox(height: 55.v),
              CustomElevatedButton(
                height: 29.v,
                width: 174.h,
                text: "Subscription",
                margin: EdgeInsets.only(left: 23.h),
                leftIcon: Container(
                  margin: EdgeInsets.only(right: 16.h),
                  child: CustomImageView(
                    imagePath: ImageConstant.imgPajamasGoBack,
                    height: 25.v,
                    width: 23.h,
                  ),
                ),
                buttonStyle: CustomButtonStyles.none,
                buttonTextStyle: CustomTextStyles.titleLargeSemiBold,
                alignment: Alignment.centerLeft,
              ),
              SizedBox(height: 48.v),
              _buildTabview(context),
              Expanded(
                child: SizedBox(
                  height: 749.v,
                  child: TabBarView(
                    controller: tabviewController,
                    children: [
                      SubscriptionPlanPage(),
                      MySubscriptionPage(),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildTabview(BuildContext context) {
    return Container(
      height: 36.v,
      width: 387.h,
      decoration: BoxDecoration(
        color: appTheme.black900.withOpacity(0.7),
        borderRadius: BorderRadius.circular(
          18.h,
        ),
      ),
      child: TabBar(
        controller: tabviewController,
        labelPadding: EdgeInsets.zero,
        labelColor: appTheme.whiteA700,
        labelStyle: TextStyle(
          fontSize: 17.fSize,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w700,
        ),
        unselectedLabelColor: appTheme.whiteA700,
        unselectedLabelStyle: TextStyle(
          fontSize: 17.fSize,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w700,
        ),
        indicator: BoxDecoration(
          color: appTheme.blueGray100Cc.withOpacity(0.7),
          borderRadius: BorderRadius.circular(
            18.h,
          ),
        ),
        tabs: [
          Tab(
            child: Text(
              "Subscription Plans",
            ),
          ),
          Tab(
            child: Text(
              "My Subcription",
            ),
          ),
        ],
      ),
    );
  }
}
