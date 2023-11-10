import '../my_subscription_page/widgets/mysubscriptionpage_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:overstackfinalv2/core/app_export.dart';

class MySubscriptionPage extends StatefulWidget {
  const MySubscriptionPage({Key? key}) : super(key: key);

  @override
  MySubscriptionPageState createState() => MySubscriptionPageState();
}

class MySubscriptionPageState extends State<MySubscriptionPage>
    with AutomaticKeepAliveClientMixin<MySubscriptionPage> {
  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            body: Container(
                width: double.maxFinite,
                decoration: AppDecoration.fillWhiteA,
                child: Column(children: [
                  SizedBox(height: 53.v),
                  _buildMySubscriptionPage(context)
                ]))));
  }

  /// Section Widget
  Widget _buildMySubscriptionPage(BuildContext context) {
    return Expanded(
        child: Padding(
            padding: EdgeInsets.only(left: 45.h, right: 51.h),
            child: ListView.separated(
                physics: BouncingScrollPhysics(),
                shrinkWrap: true,
                separatorBuilder: (context, index) {
                  return SizedBox(height: 38.v);
                },
                itemCount: 3,
                itemBuilder: (context, index) {
                  return MysubscriptionpageItemWidget(onTapView: () {
                    onTapView(context);
                  });
                })));
  }

  /// Navigates to the gymPlanScreen when the action is triggered.
  onTapView(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.gymPlanScreen);
  }
}
