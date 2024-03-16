import 'package:mushfique_s_application2/widgets/app_bar/custom_app_bar.dart';
import 'package:mushfique_s_application2/widgets/app_bar/appbar_leading_image.dart';
import 'package:mushfique_s_application2/widgets/app_bar/appbar_title_image.dart';
import 'package:mushfique_s_application2/widgets/app_bar/appbar_title.dart';
import 'package:mushfique_s_application2/widgets/app_bar/appbar_trailing_image.dart';
import 'package:mushfique_s_application2/widgets/custom_search_view.dart';
import 'widgets/two_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:mushfique_s_application2/core/app_export.dart';

// ignore_for_file: must_be_immutable
class TwoPage extends StatelessWidget {
  TwoPage({Key? key})
      : super(
          key: key,
        );

  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.whiteA700,
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: Container(
          height: 610.v,
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 25.h,
            vertical: 20.v,
          ),
          child: Stack(
            alignment: Alignment.topLeft,
            children: [
              Align(
                alignment: Alignment.center,
                child: Container(
                  decoration: AppDecoration.gradientWhiteAToOnError,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomSearchView(
                        controller: searchController,
                        hintText: "Search here...",
                      ),
                      SizedBox(height: 118.v),
                      Text(
                        "Timeline",
                        style: CustomTextStyles.bodyLarge18,
                      ),
                      SizedBox(height: 14.v),
                      Container(
                        decoration: AppDecoration.outlineGray.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder20,
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            SizedBox(height: 16.v),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 20.h),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  CustomImageView(
                                    imagePath: ImageConstant.imgEllipse24,
                                    height: 40.adaptSize,
                                    width: 40.adaptSize,
                                    radius: BorderRadius.circular(
                                      20.h,
                                    ),
                                    margin: EdgeInsets.only(bottom: 3.v),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 10.h),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Sara Mathew",
                                          style: CustomTextStyles
                                              .titleMediumMedium,
                                        ),
                                        Text(
                                          "Sukabumi, Indonesia",
                                          style: theme.textTheme.labelLarge,
                                        ),
                                      ],
                                    ),
                                  ),
                                  CustomImageView(
                                    imagePath:
                                        ImageConstant.imgVuesaxLinearMore,
                                    height: 24.adaptSize,
                                    width: 24.adaptSize,
                                    margin: EdgeInsets.only(
                                      left: 78.h,
                                      top: 7.v,
                                      bottom: 12.v,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 12.v),
                            _buildSeven(context),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              _buildTwo(context),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 49.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgMegaphone,
        margin: EdgeInsets.only(
          left: 25.h,
          top: 15.v,
          bottom: 16.v,
        ),
      ),
      centerTitle: true,
      title: Row(
        children: [
          AppbarTitleImage(
            imagePath: ImageConstant.imgFrame,
            margin: EdgeInsets.only(bottom: 5.v),
          ),
          AppbarTitle(
            text: "Bangalore",
            margin: EdgeInsets.only(left: 8.h),
          ),
        ],
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgThumbsUp,
          margin: EdgeInsets.fromLTRB(25.h, 15.v, 25.h, 16.v),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildSeven(BuildContext context) {
    return SizedBox(
      height: 278.v,
      width: 325.h,
      child: Stack(
        alignment: Alignment.topRight,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgRectangle673,
            height: 278.v,
            width: 325.h,
            radius: BorderRadius.vertical(
              bottom: Radius.circular(20.h),
            ),
            alignment: Alignment.center,
          ),
          CustomImageView(
            imagePath: ImageConstant.imgOverflowMenu,
            height: 20.adaptSize,
            width: 20.adaptSize,
            radius: BorderRadius.circular(
              1.h,
            ),
            alignment: Alignment.topRight,
            margin: EdgeInsets.only(
              top: 20.v,
              right: 20.h,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildTwo(BuildContext context) {
    return Align(
      alignment: Alignment.topLeft,
      child: SizedBox(
        height: 570.v,
        child: ListView.separated(
          padding: EdgeInsets.fromLTRB(1.h, 89.v, 39.h, 421.v),
          scrollDirection: Axis.horizontal,
          separatorBuilder: (
            context,
            index,
          ) {
            return SizedBox(
              width: 15.h,
            );
          },
          itemCount: 4,
          itemBuilder: (context, index) {
            return TwoItemWidget();
          },
        ),
      ),
    );
  }
}
