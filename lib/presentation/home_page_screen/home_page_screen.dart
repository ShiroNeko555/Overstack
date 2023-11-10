import '../home_page_screen/widgets/sixtythree_item_widget.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:overstackfinalv2/core/app_export.dart';
import 'package:overstackfinalv2/widgets/app_bar/appbar_leading_image.dart';
import 'package:overstackfinalv2/widgets/app_bar/appbar_subtitle_two.dart';
import 'package:overstackfinalv2/widgets/app_bar/custom_app_bar.dart';
import 'package:overstackfinalv2/widgets/custom_icon_button.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

// ignore_for_file: must_be_immutable
class HomePageScreen extends StatelessWidget {
  HomePageScreen({Key? key}) : super(key: key);

  int sliderIndex = 1;

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  SizedBox(height: 22.v),
                  _buildHelloSection(context),
                  SizedBox(height: 52.v),
                  SizedBox(
                      height: 712.v,
                      width: double.maxFinite,
                      child: Stack(alignment: Alignment.topRight, children: [
                        Align(
                            alignment: Alignment.center,
                            child: Container(
                                decoration: AppDecoration.fillBlueGray.copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.roundedBorder50),
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Spacer(),
                                      _buildHeightSection(context),
                                      SizedBox(height: 35.v),
                                      _buildDailyCaloriesSection(context),
                                      SizedBox(height: 35.v),
                                      _buildHomeSection(context)
                                    ]))),
                        _buildMainComponentsSection(context)
                      ]))
                ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 42.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgFloatingIcon,
            margin: EdgeInsets.only(left: 18.h, top: 15.v, bottom: 16.v)),
        title: AppbarSubtitleTwo(
            text: "TUESDAY, 24 OCTOBER", margin: EdgeInsets.only(left: 9.h)));
  }

  /// Section Widget
  Widget _buildHelloSection(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 42.h, right: 34.h),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Container(
              height: 46.v,
              width: 162.h,
              margin: EdgeInsets.only(top: 9.v, bottom: 2.v),
              child: Stack(alignment: Alignment.bottomCenter, children: [
                Align(
                    alignment: Alignment.topLeft,
                    child: Text("HELLO 👋",
                        style: CustomTextStyles.bodyMediumBlack90015)),
                Align(
                    alignment: Alignment.bottomCenter,
                    child: Text("Justin Bieber",
                        style: CustomTextStyles.headlineSmallBlack900))
              ])),
          SizedBox(
              height: 59.v,
              width: 62.h,
              child: Stack(alignment: Alignment.center, children: [
                Align(
                    alignment: Alignment.center,
                    child: Container(
                        height: 59.v,
                        width: 62.h,
                        decoration: BoxDecoration(
                            color: appTheme.teal400.withOpacity(0.9),
                            borderRadius: BorderRadius.circular(31.h),
                            boxShadow: [
                              BoxShadow(
                                  color: appTheme.teal3007f,
                                  spreadRadius: 2.h,
                                  blurRadius: 2.h,
                                  offset: Offset(0, 4))
                            ]))),
                CustomImageView(
                    imagePath: ImageConstant.imgGroup3,
                    height: 43.v,
                    width: 36.h,
                    alignment: Alignment.center)
              ]))
        ]));
  }

  /// Section Widget
  Widget _buildHeightSection(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 14.h),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Padding(
              padding: EdgeInsets.only(right: 8.h),
              child:
                  _buildWeight(context, wEIGHT: "HEIGHT", userWeight: "1.75m")),
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.h),
              child:
                  _buildWeight(context, wEIGHT: "WEIGHT", userWeight: "82kg")),
          Expanded(
              child: Container(
                  margin: EdgeInsets.only(left: 8.h),
                  padding:
                      EdgeInsets.symmetric(horizontal: 32.h, vertical: 12.v),
                  decoration: AppDecoration.fillBlueGrayE.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder33),
                  child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("BMI", style: CustomTextStyles.bodyLargeBlack900),
                        SizedBox(height: 20.v),
                        Text("21.7", style: theme.textTheme.headlineMedium),
                        SizedBox(height: 3.v),
                        Text("normal",
                            style: CustomTextStyles.bodySmallBlack900),
                        SizedBox(height: 3.v)
                      ])))
        ]));
  }

  /// Section Widget
  Widget _buildDailyCaloriesSection(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 14.h),
        padding: EdgeInsets.symmetric(horizontal: 13.h, vertical: 14.v),
        decoration: AppDecoration.fillBlueGrayE
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder33),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                  padding: EdgeInsets.only(left: 8.h),
                  child: Text("DAILY CALORIES :  ",
                      style: CustomTextStyles.bodyLargeBlack900)),
              SizedBox(height: 12.v),
              Padding(
                  padding: EdgeInsets.only(left: 8.h),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                            padding: EdgeInsets.only(bottom: 22.v),
                            child: Text("2805.38 calories",
                                style: theme.textTheme.headlineMedium)),
                        Padding(
                            padding: EdgeInsets.only(top: 10.v),
                            child: CustomIconButton(
                                height: 48.adaptSize,
                                width: 48.adaptSize,
                                padding: EdgeInsets.all(10.h),
                                decoration: IconButtonStyleHelper.outlineBlack,
                                onTap: () {
                                  onTapBtnCamera(context);
                                },
                                child: CustomImageView(
                                    imagePath: ImageConstant.imgCamera)))
                      ]))
            ]));
  }

  /// Section Widget
  Widget _buildHomeSection(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 18.v),
        decoration: AppDecoration.fillBluegray10001,
        child: Column(children: [
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            SizedBox(
                height: 44.v,
                width: 46.h,
                child: Stack(alignment: Alignment.topCenter, children: [
                  Align(
                      alignment: Alignment.center,
                      child: Container(
                          height: 44.v,
                          width: 46.h,
                          decoration: BoxDecoration(
                              color: appTheme.whiteA700,
                              borderRadius: BorderRadius.circular(23.h),
                              border: Border.all(
                                  color: appTheme.black900,
                                  width: 1.h,
                                  strokeAlign: strokeAlignOutside)))),
                  CustomImageView(
                      imagePath: ImageConstant.imgHome,
                      height: 26.v,
                      width: 30.h,
                      alignment: Alignment.topCenter,
                      margin: EdgeInsets.only(top: 7.v))
                ])),
            SizedBox(
                height: 44.v,
                width: 46.h,
                child: Stack(alignment: Alignment.center, children: [
                  Align(
                      alignment: Alignment.center,
                      child: GestureDetector(
                          onTap: () {
                            onTapView(context);
                          },
                          child: Container(
                              height: 44.v,
                              width: 46.h,
                              decoration: BoxDecoration(
                                  color: appTheme.whiteA700,
                                  borderRadius: BorderRadius.circular(23.h),
                                  border: Border.all(
                                      color: appTheme.black900,
                                      width: 1.h,
                                      strokeAlign: strokeAlignOutside))))),
                  CustomImageView(
                      imagePath: ImageConstant.imgNotification,
                      height: 27.v,
                      width: 23.h,
                      alignment: Alignment.center)
                ])),
            SizedBox(
                height: 44.v,
                width: 46.h,
                child: Stack(alignment: Alignment.center, children: [
                  Align(
                      alignment: Alignment.center,
                      child: Container(
                          height: 44.v,
                          width: 46.h,
                          decoration: BoxDecoration(
                              color: appTheme.whiteA700,
                              borderRadius: BorderRadius.circular(23.h),
                              border: Border.all(
                                  color: appTheme.black900,
                                  width: 1.h,
                                  strokeAlign: strokeAlignOutside)))),
                  CustomImageView(
                      imagePath: ImageConstant.imgVectorBlack90023x26,
                      height: 23.v,
                      width: 26.h,
                      alignment: Alignment.center)
                ])),
            SizedBox(
                height: 44.v,
                width: 46.h,
                child: Stack(alignment: Alignment.center, children: [
                  Align(
                      alignment: Alignment.center,
                      child: GestureDetector(
                          onTap: () {
                            onTapView1(context);
                          },
                          child: Container(
                              height: 44.v,
                              width: 46.h,
                              decoration: BoxDecoration(
                                  color: appTheme.whiteA700,
                                  borderRadius: BorderRadius.circular(23.h),
                                  border: Border.all(
                                      color: appTheme.black900,
                                      width: 1.h,
                                      strokeAlign: strokeAlignOutside))))),
                  CustomImageView(
                      imagePath: ImageConstant.imgUser,
                      height: 24.v,
                      width: 21.h,
                      alignment: Alignment.center)
                ]))
          ]),
          SizedBox(height: 2.v),
          Padding(
              padding: EdgeInsets.only(left: 9.h, right: 3.h),
              child:
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Padding(
                    padding: EdgeInsets.only(bottom: 2.v),
                    child: Text("HOME", style: theme.textTheme.bodySmall)),
                Spacer(flex: 39),
                Text("NOTIFICATION", style: theme.textTheme.bodySmall),
                Spacer(flex: 25),
                Padding(
                    padding: EdgeInsets.only(top: 2.v),
                    child:
                        Text("SUBSCRIPTION", style: theme.textTheme.bodySmall)),
                Spacer(flex: 35),
                Text("PROFILE", style: theme.textTheme.bodySmall)
              ]))
        ]));
  }

  /// Section Widget
  Widget _buildMainComponentsSection(BuildContext context) {
    return Align(
        alignment: Alignment.topRight,
        child: Padding(
            padding: EdgeInsets.only(top: 32.v),
            child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CarouselSlider.builder(
                      options: CarouselOptions(
                          height: 185.v,
                          initialPage: 0,
                          autoPlay: true,
                          viewportFraction: 1.0,
                          enableInfiniteScroll: false,
                          scrollDirection: Axis.horizontal,
                          onPageChanged: (index, reason) {
                            sliderIndex = index;
                          }),
                      itemCount: 1,
                      itemBuilder: (context, index, realIndex) {
                        return SixtythreeItemWidget();
                      }),
                  SizedBox(height: 20.v),
                  Container(
                      height: 15.v,
                      margin: EdgeInsets.only(left: 148.h),
                      child: AnimatedSmoothIndicator(
                          activeIndex: sliderIndex,
                          count: 1,
                          axisDirection: Axis.horizontal,
                          effect: ScrollingDotsEffect(
                              spacing: 15,
                              activeDotColor: appTheme.black900,
                              dotColor: appTheme.blueGray10001,
                              dotHeight: 15.v,
                              dotWidth: 15.h)))
                ])));
  }

  /// Common widget
  Widget _buildWeight(
    BuildContext context, {
    required String wEIGHT,
    required String userWeight,
  }) {
    return Expanded(
        child: SizedBox(
            width: double.maxFinite,
            child: Container(
                padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 16.v),
                decoration: AppDecoration.fillBlueGrayE
                    .copyWith(borderRadius: BorderRadiusStyle.roundedBorder33),
                child: Column(mainAxisSize: MainAxisSize.min, children: [
                  Align(
                      alignment: Alignment.centerRight,
                      child: Padding(
                          padding: EdgeInsets.only(right: 4.h),
                          child: Text(wEIGHT,
                              style: CustomTextStyles.bodyLargeBlack900
                                  .copyWith(color: appTheme.black900)))),
                  SizedBox(height: 19.v),
                  Text(userWeight,
                      style: theme.textTheme.headlineMedium!
                          .copyWith(color: appTheme.black900)),
                  SizedBox(height: 14.v)
                ]))));
  }

  /// Navigates to the cameraPageTabContainerScreen when the action is triggered.
  onTapBtnCamera(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.cameraPageTabContainerScreen);
  }

  /// Navigates to the notificationPageScreen when the action is triggered.
  onTapView(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.notificationPageScreen);
  }

  /// Navigates to the profilePageScreen when the action is triggered.
  onTapView1(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.profilePageScreen);
  }
}
