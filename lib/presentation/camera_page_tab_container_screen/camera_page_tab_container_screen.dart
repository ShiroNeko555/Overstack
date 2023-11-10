import 'package:flutter/material.dart';
import 'package:overstackfinalv2/core/app_export.dart';
import 'package:overstackfinalv2/presentation/camera_page/camera_page.dart';
import 'package:overstackfinalv2/widgets/app_bar/appbar_leading_image.dart';
import 'package:overstackfinalv2/widgets/app_bar/appbar_subtitle_two.dart';
import 'package:overstackfinalv2/widgets/app_bar/custom_app_bar.dart';

class CameraPageTabContainerScreen extends StatefulWidget {
  const CameraPageTabContainerScreen({Key? key})
      : super(
          key: key,
        );

  @override
  CameraPageTabContainerScreenState createState() =>
      CameraPageTabContainerScreenState();
}

class CameraPageTabContainerScreenState
    extends State<CameraPageTabContainerScreen> with TickerProviderStateMixin {
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
        appBar: _buildAppBar(context),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              SizedBox(height: 7.v),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 30.h),
                  child: Row(
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgPajamasGoBack,
                        height: 27.v,
                        width: 23.h,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 9.h),
                        child: Text(
                          "Back",
                          style: CustomTextStyles.titleLargeSemiBold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 32.v),
              _buildRecentOrders(context),
              SizedBox(height: 14.v),
              _buildClientTestimonials(context),
              SizedBox(height: 34.v),
              Container(
                decoration: AppDecoration.fillBlueGrayE,
                child: Column(
                  children: [
                    _buildReviews(context),
                    SizedBox(height: 21.v),
                    _buildTabview(context),
                    _buildUserProfile(context),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 54.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgFloatingIcon,
        margin: EdgeInsets.only(
          left: 30.h,
          top: 15.v,
          bottom: 16.v,
        ),
      ),
      title: AppbarSubtitleTwo(
        text: "TUESDAY, 24 OCTOBER",
        margin: EdgeInsets.only(left: 9.h),
      ),
    );
  }

  /// Section Widget
  Widget _buildRecentOrders(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 21.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Card(
            clipBehavior: Clip.antiAlias,
            elevation: 0,
            margin: EdgeInsets.all(0),
            color: appTheme.blueGray400.withOpacity(0.8),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadiusStyle.roundedBorder20,
            ),
            child: Container(
              height: 41.v,
              width: 231.h,
              decoration: AppDecoration.fillBluegray400.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder20,
              ),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 2.v),
                          child: Text(
                            "DATE :",
                            style: CustomTextStyles.titleLargeBold,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 11.h),
                          child: _buildTwelve(
                            context,
                            userDate: "2023-10-24",
                          ),
                        ),
                      ],
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      width: 231.h,
                      padding: EdgeInsets.symmetric(vertical: 6.v),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadiusStyle.roundedBorder20,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: 2.v),
                            child: Text(
                              "DATE :",
                              style: CustomTextStyles.titleLargeBold,
                            ),
                          ),
                          SizedBox(
                            height: 27.v,
                            width: 131.h,
                            child: Stack(
                              alignment: Alignment.center,
                              children: [
                                CustomImageView(
                                  imagePath: ImageConstant.imgRectangle38,
                                  height: 27.v,
                                  width: 131.h,
                                  radius: BorderRadius.circular(
                                    13.h,
                                  ),
                                  alignment: Alignment.center,
                                ),
                                Align(
                                  alignment: Alignment.center,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "2023-10-24",
                                        style: theme.textTheme.titleSmall,
                                      ),
                                      CustomImageView(
                                        imagePath: ImageConstant.imgLocation,
                                        height: 7.v,
                                        width: 8.h,
                                        margin: EdgeInsets.only(
                                          left: 11.h,
                                          top: 5.v,
                                          bottom: 6.v,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Card(
            clipBehavior: Clip.antiAlias,
            elevation: 0,
            margin: EdgeInsets.only(left: 14.h),
            color: appTheme.blueGray400.withOpacity(0.8),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadiusStyle.roundedBorder20,
            ),
            child: Container(
              height: 41.v,
              width: 143.h,
              padding: EdgeInsets.symmetric(
                horizontal: 9.h,
                vertical: 7.v,
              ),
              decoration: AppDecoration.fillBluegray400.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder20,
              ),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgRectangle38,
                    height: 27.v,
                    width: 124.h,
                    radius: BorderRadius.circular(
                      13.h,
                    ),
                    alignment: Alignment.center,
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "BREAKFAST",
                          style: theme.textTheme.titleSmall,
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgLocation,
                          height: 7.v,
                          width: 8.h,
                          margin: EdgeInsets.only(
                            left: 11.h,
                            top: 5.v,
                            bottom: 6.v,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildClientTestimonials(BuildContext context) {
    return SizedBox(
      height: 147.v,
      width: 388.h,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Align(
            alignment: Alignment.center,
            child: Container(
              margin: EdgeInsets.only(bottom: 1.v),
              padding: EdgeInsets.symmetric(vertical: 49.v),
              decoration: AppDecoration.fillBluegray400.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder60,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgCamera,
                    height: 35.v,
                    width: 41.h,
                    margin: EdgeInsets.only(
                      top: 8.v,
                      bottom: 5.v,
                    ),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgTablerPhotoFilled,
                    height: 46.adaptSize,
                    width: 46.adaptSize,
                    margin: EdgeInsets.only(top: 2.v),
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: SizedBox(
              height: 146.v,
              child: VerticalDivider(
                width: 5.h,
                thickness: 5.v,
                color: appTheme.black900,
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildReviews(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 14.h,
        right: 7.h,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "CALORIES",
            style: CustomTextStyles.headlineLargeBold,
          ),
          Spacer(),
          Container(
            height: 18.adaptSize,
            width: 18.adaptSize,
            margin: EdgeInsets.only(
              top: 7.v,
              bottom: 11.v,
            ),
            padding: EdgeInsets.all(4.h),
            decoration: AppDecoration.fillBluegray10001.copyWith(
              borderRadius: BorderRadiusStyle.circleBorder7,
            ),
            child: CustomImageView(
              imagePath: ImageConstant.imgVectorBlack9009x9,
              height: 9.adaptSize,
              width: 9.adaptSize,
              alignment: Alignment.bottomRight,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 7.h,
              top: 8.v,
              bottom: 12.v,
            ),
            child: Text(
              "12% from last week",
              style: CustomTextStyles.bodyMediumBlack900_1,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildTabview(BuildContext context) {
    return Container(
      height: 36.v,
      width: 409.h,
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
              "Week",
            ),
          ),
          Tab(
            child: Text(
              "Day",
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildUserProfile(BuildContext context) {
    return SizedBox(
      height: 447.v,
      child: TabBarView(
        controller: tabviewController,
        children: [
          CameraPage(),
          CameraPage(),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildTwelve(
    BuildContext context, {
    required String userDate,
  }) {
    return SizedBox(
      height: 27.v,
      width: 131.h,
      child: Stack(
        alignment: Alignment.center,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgRectangle38,
            height: 27.v,
            width: 131.h,
            radius: BorderRadius.circular(
              13.h,
            ),
            alignment: Alignment.center,
          ),
          Align(
            alignment: Alignment.center,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  userDate,
                  style: theme.textTheme.titleSmall!.copyWith(
                    color: appTheme.black900.withOpacity(0.3),
                  ),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgLocation,
                  height: 7.v,
                  width: 8.h,
                  margin: EdgeInsets.only(
                    left: 11.h,
                    top: 5.v,
                    bottom: 6.v,
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
