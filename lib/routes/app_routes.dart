import 'package:flutter/material.dart';
import 'package:overstackfinalv2/presentation/log_in_page_screen/log_in_page_screen.dart';
import 'package:overstackfinalv2/presentation/splash_screen/splash_screen.dart';
import 'package:overstackfinalv2/presentation/sign_up_page_screen/sign_up_page_screen.dart';
import 'package:overstackfinalv2/presentation/personal_details_screen/personal_details_screen.dart';
import 'package:overstackfinalv2/presentation/home_page_screen/home_page_screen.dart';
import 'package:overstackfinalv2/presentation/camera_page_tab_container_screen/camera_page_tab_container_screen.dart';
import 'package:overstackfinalv2/presentation/notification_page_screen/notification_page_screen.dart';
import 'package:overstackfinalv2/presentation/profile_page_screen/profile_page_screen.dart';
import 'package:overstackfinalv2/presentation/wallet_page_screen/wallet_page_screen.dart';
import 'package:overstackfinalv2/presentation/wallet_reload_screen/wallet_reload_screen.dart';
import 'package:overstackfinalv2/presentation/meal_delivery_plans_screen/meal_delivery_plans_screen.dart';
import 'package:overstackfinalv2/presentation/meal_plans_details_screen/meal_plans_details_screen.dart';
import 'package:overstackfinalv2/presentation/meal_choice_purchase_screen/meal_choice_purchase_screen.dart';
import 'package:overstackfinalv2/presentation/my_subscription_page_tab_container_screen/my_subscription_page_tab_container_screen.dart';
import 'package:overstackfinalv2/presentation/recipe_plan_screen/recipe_plan_screen.dart';
import 'package:overstackfinalv2/presentation/recipi_one_screen/recipi_one_screen.dart';
import 'package:overstackfinalv2/presentation/recipi_two_screen/recipi_two_screen.dart';
import 'package:overstackfinalv2/presentation/gym_plan_screen/gym_plan_screen.dart';
import 'package:overstackfinalv2/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String logInPageScreen = '/log_in_page_screen';

  static const String splashScreen = '/splash_screen';

  static const String signUpPageScreen = '/sign_up_page_screen';

  static const String personalDetailsScreen = '/personal_details_screen';

  static const String homePageScreen = '/home_page_screen';

  static const String cameraPage = '/camera_page';

  static const String cameraPageTabContainerScreen =
      '/camera_page_tab_container_screen';

  static const String notificationPageScreen = '/notification_page_screen';

  static const String profilePageScreen = '/profile_page_screen';

  static const String walletPageScreen = '/wallet_page_screen';

  static const String walletReloadScreen = '/wallet_reload_screen';

  static const String subscriptionPlanPage = '/subscription_plan_page';

  static const String mealDeliveryPlansScreen = '/meal_delivery_plans_screen';

  static const String mealPlansDetailsScreen = '/meal_plans_details_screen';

  static const String mealChoicePurchaseScreen = '/meal_choice_purchase_screen';

  static const String mySubscriptionPage = '/my_subscription_page';

  static const String mySubscriptionPageTabContainerScreen =
      '/my_subscription_page_tab_container_screen';

  static const String recipePlanScreen = '/recipe_plan_screen';

  static const String recipiOneScreen = '/recipi_one_screen';

  static const String recipiTwoScreen = '/recipi_two_screen';

  static const String gymPlanScreen = '/gym_plan_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static Map<String, WidgetBuilder> routes = {
    logInPageScreen: (context) => LogInPageScreen(),
    splashScreen: (context) => SplashScreen(),
    signUpPageScreen: (context) => SignUpPageScreen(),
    personalDetailsScreen: (context) => PersonalDetailsScreen(),
    homePageScreen: (context) => HomePageScreen(),
    cameraPageTabContainerScreen: (context) => CameraPageTabContainerScreen(),
    notificationPageScreen: (context) => NotificationPageScreen(),
    profilePageScreen: (context) => ProfilePageScreen(),
    walletPageScreen: (context) => WalletPageScreen(),
    walletReloadScreen: (context) => WalletReloadScreen(),
    mealDeliveryPlansScreen: (context) => MealDeliveryPlansScreen(),
    mealPlansDetailsScreen: (context) => MealPlansDetailsScreen(),
    mealChoicePurchaseScreen: (context) => MealChoicePurchaseScreen(),
    mySubscriptionPageTabContainerScreen: (context) =>
        MySubscriptionPageTabContainerScreen(),
    recipePlanScreen: (context) => RecipePlanScreen(),
    recipiOneScreen: (context) => RecipiOneScreen(),
    recipiTwoScreen: (context) => RecipiTwoScreen(),
    gymPlanScreen: (context) => GymPlanScreen(),
    appNavigationScreen: (context) => AppNavigationScreen()
  };
}
