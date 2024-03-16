import 'package:mushfique_s_application2/presentation/two_page/two_page.dart';
import 'package:mushfique_s_application2/widgets/custom_bottom_app_bar.dart';
import 'package:mushfique_s_application2/widgets/custom_floating_button.dart';
import 'package:flutter/material.dart';
import 'package:mushfique_s_application2/core/app_export.dart';

// ignore_for_file: must_be_immutable
class TwoContainerScreen extends StatelessWidget {
  TwoContainerScreen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.whiteA700,
            body: Navigator(
                key: navigatorKey,
                initialRoute: AppRoutes.twoPage,
                onGenerateRoute: (routeSetting) => PageRouteBuilder(
                    pageBuilder: (ctx, ani, ani1) =>
                        getCurrentPage(routeSetting.name!),
                    transitionDuration: Duration(seconds: 0))),
            bottomNavigationBar: _buildTwelve(context),
            floatingActionButton: CustomFloatingButton(
                height: 64,
                width: 64,
                child: CustomImageView(
                    imagePath: ImageConstant.imgFrameOnprimarycontainer,
                    height: 32.0.v,
                    width: 32.0.h)),
            floatingActionButtonLocation:
                FloatingActionButtonLocation.centerDocked));
  }

  /// Section Widget
  Widget _buildTwelve(BuildContext context) {
    return CustomBottomAppBar(onChanged: (BottomBarEnum type) {
      Navigator.pushNamed(navigatorKey.currentContext!, getCurrentRoute(type));
    });
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Settings:
        return AppRoutes.twoPage;
      case BottomBarEnum.Settingswhitea700:
        return "/";
      case BottomBarEnum.Contrast:
        return "/";
      case BottomBarEnum.Lock:
        return "/";
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.twoPage:
        return TwoPage();
      default:
        return DefaultWidget();
    }
  }
}
