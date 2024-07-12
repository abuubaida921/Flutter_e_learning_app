
import 'package:flutter/material.dart';
import 'package:flutter_e_learning_app/core/app_export.dart';
import '../../widgets/app_bar/custom_bottom_bar_controller.dart';
import '../../widgets/custom_elevated_button.dart';
import 'controller/home_screen_container_controller.dart';


class HomeScreenContainerScreen extends StatefulWidget {
  const HomeScreenContainerScreen({super.key});

  @override
  State<HomeScreenContainerScreen> createState() => _HomeScreenContainerScreenState();
}

class _HomeScreenContainerScreenState extends State<HomeScreenContainerScreen> {
 HomeScreenContainerController controller = Get.put(HomeScreenContainerController());
 List<Widget> screen = [
  Container(color: Colors.red,),
  Container(color: Colors.green,),
  Container(color: Colors.yellow,),
  Container(color: Colors.deepOrange,),
  Container(color: Colors.blue,),
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
     return false;
    },
    child: Scaffold(
        backgroundColor: appTheme.bgColor,
        body: SafeArea(child: screen[controller.selectedIndex]),
        ),
   ),
  );
 }
}


