import 'package:flutter/material.dart';
import 'package:flutter_e_learning_app/core/app_export.dart';
import '../../widgets/app_bar/custom_bottom_bar_controller.dart';
import '../../widgets/custom_bottom_bar.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_outlined_button.dart';
import '../chat_list_tab_container_screen/chat_list_tab_container_screen.dart';
import '../favorite1_page/favorite1_page.dart';
import '../home_screen_page/home_screen_page.dart';
import '../my_courses1_page/my_courses1_page.dart';
import 'controller/home_screen_container_controller.dart';

class HomeScreenContainerScreen extends StatefulWidget {
  const HomeScreenContainerScreen({super.key});

  @override
  State<HomeScreenContainerScreen> createState() =>
      _HomeScreenContainerScreenState();
}

class _HomeScreenContainerScreenState extends State<HomeScreenContainerScreen> {
  HomeScreenContainerController controller =
      Get.put(HomeScreenContainerController());
  List<Widget> screen = [
    HomeScreenPage(),
    MyCourses1Page(),
    Favorite1Page(),
    ChatListTabContainerScreen(),
    Container(
      color: Colors.blue,
    ),
  ];

  @override
  void initState() {
    // TODO: implement initState
    setSafeAreaColor();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return GetBuilder<CustomBottomBarController>(
      init: CustomBottomBarController(),
      builder: (controller) => WillPopScope(
        onWillPop: () async {
          if (controller.selectedIndex == 0) {
            showDialog(
              barrierDismissible: false,
              context: context,
              builder: (context) {
                return AlertDialog(
                    insetPadding: EdgeInsets.all(16.v),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.h)),
                    contentPadding: EdgeInsets.zero,
                    content: Container(
                        width: 396.h,
                        padding: EdgeInsets.only(top: 38.v, bottom: 38.v),
                        // decoration: AppDecoration.white.copyWith(
                        //
                        //     borderRadius: BorderRadiusStyle.roundedBorder16),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Are you sure exit app?".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: theme.textTheme.titleMedium,
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                left: 30.h,
                                top: 28.v,
                                right: 30.h,
                                bottom: 2.v,
                              ),
                              child: Row(
                                children: [
                                  Expanded(
                                      child: CustomOutlinedButton(
                                          text: "No",
                                          margin: EdgeInsets.only(right: 10.h),
                                          onPressed: () {
                                            Get.back();
                                          })),
                                  SizedBox(
                                    width: 10.h,
                                  ),
                                  Expanded(
                                      child: CustomElevatedButton(
                                          height: 56.v,
                                          text: "Exit",
                                          margin: EdgeInsets.only(left: 10.h),
                                          onPressed: () {
                                            if (controller.selectedIndex == 0) {
                                              closeApp();
                                            } else {
                                              controller.getIndex(0);
                                              Get.back();
                                            }
                                          })),
                                ],
                              ),
                            ),
                          ],
                        )));
              },
            );
          } else {
            controller.getIndex(0);
            // Get.back();
          }
          return false;
        },
        child: Scaffold(
          backgroundColor: appTheme.bgColor,
          body: SafeArea(child: screen[controller.selectedIndex]),
            bottomNavigationBar:
            CustomBottomBar(onChanged: (BottomBarEnum type) {
             Get.toNamed(getCurrentRoute(type), id: 1);
            })),
      ),
    );
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Home:
        return AppRoutes.homeScreenPage;
      case BottomBarEnum.Mycourses:
        return AppRoutes.myCourses1Page;
      case BottomBarEnum.Favorite:
        return AppRoutes.favorite1Page;
      case BottomBarEnum.Chat:
        return AppRoutes.chatsPage;
      case BottomBarEnum.Profile:
        return AppRoutes.profileTabContainerPage;
      default:
        return "/";
    }
  }
}
