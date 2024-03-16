import 'package:mushfique_s_application2/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:mushfique_s_application2/core/app_export.dart';

class OneScreen extends StatelessWidget {
  const OneScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          height: SizeUtils.height,
          width: double.maxFinite,
          child: Stack(
            alignment: Alignment.topCenter,
            children: [
              Opacity(
                opacity: 0.5,
                child: CustomImageView(
                  imagePath: ImageConstant.imgRectangle682,
                  height: 759.v,
                  width: 279.h,
                  alignment: Alignment.topLeft,
                ),
              ),
              Opacity(
                opacity: 0.5,
                child: CustomImageView(
                  imagePath: ImageConstant.imgRectangle682,
                  height: 759.v,
                  width: 375.h,
                  alignment: Alignment.topCenter,
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 25.h,
                    vertical: 45.v,
                  ),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        ImageConstant.imgRectangle682,
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Align(
                        alignment: Alignment.centerRight,
                        child: Text(
                          "Skip",
                          style: CustomTextStyles.titleSmallWhiteA700_1,
                        ),
                      ),
                      SizedBox(height: 84.v),
                      Container(
                        width: 244.h,
                        margin: EdgeInsets.only(
                          left: 41.h,
                          right: 39.h,
                        ),
                        child: Text(
                          "Find Your Best Matches",
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                          style: theme.textTheme.displaySmall!.copyWith(
                            height: 1.29,
                          ),
                        ),
                      ),
                      SizedBox(height: 12.v),
                      Container(
                        width: 295.h,
                        margin: EdgeInsets.symmetric(horizontal: 14.h),
                        child: Text(
                          "Enjoy together, happy to share and save your time with transactions at home.",
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                          style: CustomTextStyles.titleSmallPoppinsWhiteA700
                              .copyWith(
                            height: 1.86,
                          ),
                        ),
                      ),
                      Spacer(),
                      SizedBox(height: 40.v),
                      CustomElevatedButton(
                        text: "Get Started",
                        buttonStyle: CustomButtonStyles.none,
                        decoration:
                            CustomButtonStyles.gradientPrimaryToGreenDecoration,
                      ),
                    ],
                  ),
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "Dont have an account? ",
                        style: CustomTextStyles.titleSmallPoppinsccffffff,
                      ),
                      TextSpan(
                        text: "Sign up",
                        style: CustomTextStyles.titleSmallPoppinsffffffff,
                      ),
                    ],
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
