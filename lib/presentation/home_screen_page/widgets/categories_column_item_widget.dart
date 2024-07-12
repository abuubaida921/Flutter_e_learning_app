import '../controller/home_screen_controller.dart';
import '../models/categories_column_item_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_e_learning_app/core/app_export.dart';
import 'package:flutter_e_learning_app/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class CategoriesColumnItemWidget extends StatelessWidget {
  CategoriesColumnItemWidget(
    this.categoriesColumnItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  CategoriesColumnItemModel categoriesColumnItemModelObj;

  var controller = Get.find<HomeScreenController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 12.h,
        vertical: 15.v,
      ),
      decoration: AppDecoration.fillIndigo.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder12,
      ),
      width: 87.h,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Obx(
            () => CustomIconButton(
              height: 47.adaptSize,
              width: 47.adaptSize,
              padding: EdgeInsets.all(11.h),
              decoration: IconButtonStyleHelper.fillWhiteA,
              child: CustomImageView(
                imagePath: categoriesColumnItemModelObj.catDesigning!.value,
              ),
            ),
          ),
          SizedBox(height: 9.v),
          Obx(
            () => Text(
              categoriesColumnItemModelObj.designingText!.value,
              style: theme.textTheme.titleSmall,
            ),
          ),
        ],
      ),
    );
  }
}
