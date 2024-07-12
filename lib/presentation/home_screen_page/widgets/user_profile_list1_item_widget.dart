import '../controller/home_screen_controller.dart';
import '../models/user_profile_list1_item_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_e_learning_app/core/app_export.dart';

// ignore: must_be_immutable
class UserProfileList1ItemWidget extends StatelessWidget {
  UserProfileList1ItemWidget(
    this.userProfileList1ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  UserProfileList1ItemModel userProfileList1ItemModelObj;

  var controller = Get.find<HomeScreenController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 12.h,
        vertical: 11.v,
      ),
      decoration: AppDecoration.fillGray.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder12,
      ),
      width: 173.h,
      child: Row(
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgUser39x39,
            height: 39.adaptSize,
            width: 39.adaptSize,
          ),
          Padding(
            padding: EdgeInsets.only(left: 6.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Obx(
                  () => Text(
                    userProfileList1ItemModelObj.userName!.value,
                    style: theme.textTheme.titleSmall,
                  ),
                ),
                SizedBox(height: 5.v),
                Obx(
                  () => Text(
                    userProfileList1ItemModelObj.userRole!.value,
                    style: theme.textTheme.bodySmall,
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
