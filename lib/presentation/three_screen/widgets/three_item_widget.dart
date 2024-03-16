import 'package:flutter/material.dart';
import 'package:mushfique_s_application2/core/app_export.dart';

// ignore: must_be_immutable
class ThreeItemWidget extends StatelessWidget {
  const ThreeItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return CustomImageView(
      imagePath: ImageConstant.imgRectangle677,
      height: 155.adaptSize,
      width: 155.adaptSize,
      radius: BorderRadius.circular(
        15.h,
      ),
    );
  }
}
