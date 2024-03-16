import 'package:mushfique_s_application2/widgets/app_bar/custom_app_bar.dart';
import 'package:mushfique_s_application2/widgets/app_bar/appbar_leading_image.dart';
import 'package:mushfique_s_application2/widgets/app_bar/appbar_trailing_image.dart';
import 'package:mushfique_s_application2/widgets/custom_elevated_button.dart';
import 'package:mushfique_s_application2/widgets/custom_outlined_button.dart';
import 'package:staggered_grid_view_flutter/widgets/staggered_grid_view.dart';
import 'package:staggered_grid_view_flutter/widgets/staggered_tile.dart';
import 'widgets/three_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:mushfique_s_application2/core/app_export.dart';

class ThreeScreen extends StatelessWidget {
  const ThreeScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        backgroundColor: appTheme.whiteA700,
        appBar: _buildAppBar(context),
        body: Container(
          width: SizeUtils.width,
          height: SizeUtils.height,
          decoration: BoxDecoration(
            color: appTheme.whiteA700,
            gradient: LinearGradient(
              begin: Alignment(0.5, 0),
              end: Alignment(0.5, 1),
              colors: [
                appTheme.whiteA700,
                theme.colorScheme.onError,
              ],
            ),
          ),
          child: Container(
            width: double.maxFinite,
            padding: EdgeInsets.symmetric(vertical: 25.v),
            child: Column(
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 25.h),
                    child: Row(
                      children: [
                        SizedBox(
                          height: 88.adaptSize,
                          width: 88.adaptSize,
                          child: Stack(
                            alignment: Alignment.bottomRight,
                            children: [
                              CustomImageView(
                                imagePath: ImageConstant.imgEllipse2488x88,
                                height: 88.adaptSize,
                                width: 88.adaptSize,
                                radius: BorderRadius.circular(
                                  44.h,
                                ),
                                alignment: Alignment.center,
                              ),
                              Align(
                                alignment: Alignment.bottomRight,
                                child: Container(
                                  height: 16.adaptSize,
                                  width: 16.adaptSize,
                                  margin: EdgeInsets.only(
                                    right: 2.h,
                                    bottom: 9.v,
                                  ),
                                  decoration: BoxDecoration(
                                    color: appTheme.whiteA700,
                                    borderRadius: BorderRadius.circular(
                                      8.h,
                                    ),
                                  ),
                                ),
                              ),
                              CustomImageView(
                                imagePath:
                                    ImageConstant.imgFrameOnsecondarycontainer,
                                height: 20.adaptSize,
                                width: 20.adaptSize,
                                alignment: Alignment.bottomRight,
                                margin: EdgeInsets.only(bottom: 7.v),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 15.h,
                            top: 18.v,
                            bottom: 13.v,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Sara Mathew",
                                style: CustomTextStyles.titleMediumMedium_1,
                              ),
                              SizedBox(height: 5.v),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  CustomImageView(
                                    imagePath:
                                        ImageConstant.imgFrameBlueGray600,
                                    height: 18.adaptSize,
                                    width: 18.adaptSize,
                                    margin: EdgeInsets.only(bottom: 5.v),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                      left: 5.h,
                                      top: 2.v,
                                    ),
                                    child: Text(
                                      "Bangalore, India",
                                      style: CustomTextStyles.titleSmallPoppins,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 30.v),
                Padding(
                  padding: EdgeInsets.only(
                    left: 46.h,
                    right: 41.h,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "1,532",
                            style: theme.textTheme.titleMedium,
                          ),
                          SizedBox(height: 4.v),
                          Text(
                            "Posts",
                            style: theme.textTheme.titleSmall,
                          ),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 25.h),
                        child: SizedBox(
                          height: 48.v,
                          child: VerticalDivider(
                            width: 1.h,
                            thickness: 1.v,
                            indent: 6.h,
                            endIndent: 12.h,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 29.h),
                        child: _buildOneThousandThreeHundredTen(
                          context,
                          oneThousandThreeHundredTen: "4,310",
                          following: "Followers",
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 24.h),
                        child: SizedBox(
                          height: 48.v,
                          child: VerticalDivider(
                            width: 1.h,
                            thickness: 1.v,
                            indent: 6.h,
                            endIndent: 12.h,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 29.h),
                        child: _buildOneThousandThreeHundredTen(
                          context,
                          oneThousandThreeHundredTen: "1,310",
                          following: "Following",
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 29.v),
                _buildMessege(context),
                SizedBox(height: 30.v),
                Divider(
                  color: appTheme.gray20001,
                ),
                SizedBox(height: 25.v),
                _buildThree(context),
              ],
            ),
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
        imagePath: ImageConstant.imgArrowDown,
        margin: EdgeInsets.only(
          left: 25.h,
          top: 16.v,
          bottom: 16.v,
        ),
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgVuesaxLinearMore,
          margin: EdgeInsets.symmetric(
            horizontal: 25.h,
            vertical: 16.v,
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildMessege(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 25.h,
        right: 33.h,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomElevatedButton(
            height: 48.v,
            width: 195.h,
            text: "Messege",
            buttonStyle: CustomButtonStyles.none,
            decoration: CustomButtonStyles.gradientPrimaryToGreenTL24Decoration,
          ),
          CustomOutlinedButton(
            width: 112.h,
            text: "+ Follow",
            margin: EdgeInsets.only(left: 10.h),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildThree(BuildContext context) {
    return StaggeredGridView.countBuilder(
      shrinkWrap: true,
      primary: false,
      crossAxisCount: 4,
      crossAxisSpacing: 15.h,
      mainAxisSpacing: 15.h,
      staggeredTileBuilder: (index) {
        return StaggeredTile.fit(2);
      },
      itemCount: 4,
      itemBuilder: (context, index) {
        return ThreeItemWidget();
      },
    );
  }

  /// Common widget
  Widget _buildOneThousandThreeHundredTen(
    BuildContext context, {
    required String oneThousandThreeHundredTen,
    required String following,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          oneThousandThreeHundredTen,
          style: theme.textTheme.titleMedium!.copyWith(
            color: theme.colorScheme.onPrimaryContainer,
          ),
        ),
        SizedBox(height: 5.v),
        Text(
          following,
          style: theme.textTheme.titleSmall!.copyWith(
            color: appTheme.blueGray600,
          ),
        ),
      ],
    );
  }
}
