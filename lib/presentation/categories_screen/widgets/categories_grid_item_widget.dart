import '../controller/categories_controller.dart';
import '../models/categories_grid_item_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_e_learning_app/core/app_export.dart';
import 'package:flutter_e_learning_app/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class CategoriesGridItemWidget extends StatelessWidget {
  CategoriesGridItemWidget(
    this.categoriesGridItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  CategoriesGridItemModel categoriesGridItemModelObj;

  var controller = Get.find<CategoriesController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 8.h,
        vertical: 8.v,
      ),
      decoration: AppDecoration.fillIndigo.copyWith(
        color: categoriesGridItemModelObj.bgColor,
        borderRadius: BorderRadiusStyle.roundedBorder12,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomIconButton(
            height: 54.adaptSize,
            width: 54.adaptSize,
            padding: EdgeInsets.all(11.h),
            decoration: IconButtonStyleHelper.fillWhiteATL27,
            child: CustomImageView(
              imagePath: categoriesGridItemModelObj.icon!,
            ),
          ),
SizedBox(height:16.v),
          Text(
            categoriesGridItemModelObj.title!,
            style: TextStyle(
              color: Colors.black,
              fontSize: 16.fSize,
              fontFamily: 'SF Pro Display',
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(height: 2.v),
        ],
      ),
    );
  }
}
