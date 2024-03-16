import 'package:mushfique_s_application2/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:mushfique_s_application2/core/app_export.dart';

// ignore: must_be_immutable
class TwoItemWidget extends StatelessWidget {
  const TwoItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 60.h,
      child: Align(
        alignment: Alignment.topLeft,
        child: CustomIconButton(
          height: 60.adaptSize,
          width: 60.adaptSize,
          padding: EdgeInsets.all(18.h),
          child: CustomImageView(
            imagePath: ImageConstant.imgFrameOnprimarycontainer,
          ),
        ),
      ),
    );
  }
}
