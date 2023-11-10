import 'package:flutter/material.dart';
import 'package:overstackfinalv2/core/app_export.dart';

class AppNavigationScreen extends StatelessWidget {
  const AppNavigationScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0XFFFFFFFF),
        body: SizedBox(
          width: 375.h,
          child: Column(
            children: [
              _buildAppNavigation(context),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0XFFFFFFFF),
                    ),
                    child: Column(
                      children: [
                        _buildScreenTitle(
                          context,
                          screenTitle: "Log in Page",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.logInPageScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Splash Screen",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.splashScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Sign up Page",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.signUpPageScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Personal Details",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.personalDetailsScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Home Page",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.homePageScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Camera Page - Tab Container",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.cameraPageTabContainerScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Notification Page",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.notificationPageScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Profile Page",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.profilePageScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Wallet Page",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.walletPageScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Wallet --> Reload",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.walletReloadScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Meal Delivery Plans",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.mealDeliveryPlansScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Meal Plans --> Details",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.mealPlansDetailsScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Meal Choice --> Purchase",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.mealChoicePurchaseScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "My_Subscription Page - Tab Container",
                          onTapScreenTitle: () => onTapScreenTitle(context,
                              AppRoutes.mySubscriptionPageTabContainerScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Recipe Plan",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.recipePlanScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Recipi One",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.recipiOneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Recipi Two",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.recipiTwoScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Gym Plan",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.gymPlanScreen),
                        ),
                      ],
                    ),
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
  Widget _buildAppNavigation(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0XFFFFFFFF),
      ),
      child: Column(
        children: [
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.h),
              child: Text(
                "App Navigation",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF000000),
                  fontSize: 20.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 20.h),
              child: Text(
                "Check your app's UI from the below demo screens of your app.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF888888),
                  fontSize: 16.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 5.v),
          Divider(
            height: 1.v,
            thickness: 1.v,
            color: Color(0XFF000000),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildScreenTitle(
    BuildContext context, {
    required String screenTitle,
    Function? onTapScreenTitle,
  }) {
    return GestureDetector(
      onTap: () {
        onTapScreenTitle!.call();
      },
      child: Container(
        decoration: BoxDecoration(
          color: Color(0XFFFFFFFF),
        ),
        child: Column(
          children: [
            SizedBox(height: 10.v),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.h),
                child: Text(
                  screenTitle,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0XFF000000),
                    fontSize: 20.fSize,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.v),
            SizedBox(height: 5.v),
            Divider(
              height: 1.v,
              thickness: 1.v,
              color: Color(0XFF888888),
            ),
          ],
        ),
      ),
    );
  }

  /// Common click event
  void onTapScreenTitle(
    BuildContext context,
    String routeName,
  ) {
    Navigator.pushNamed(context, routeName);
  }
}
