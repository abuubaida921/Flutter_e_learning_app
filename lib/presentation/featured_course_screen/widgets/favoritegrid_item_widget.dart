import '../../favorite1_page/controller/favorite1_controller.dart';
import '../controller/featured_course_controller.dart';
import '../models/favorite_grid_item_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_e_learning_app/core/app_export.dart';
import 'package:flutter_e_learning_app/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class FavoriteGridItemWidget extends StatefulWidget {
  FavoriteGridItemWidget(
    this.favoriteGridItemModelObj, {
    Key? key,
    this.onTapFund,
  }) : super(
          key: key,
        );

  FavoriteGridItemModel favoriteGridItemModelObj;

  VoidCallback? onTapFund;

  @override
  State<FavoriteGridItemWidget> createState() => _FavoriteGridItemWidgetState();
}

class _FavoriteGridItemWidgetState extends State<FavoriteGridItemWidget> {
  Favorite1Controller favorite1Controller = Get.put(Favorite1Controller());
  var controller = Get.find<FeaturedCourseController>();

  @override
  Widget build(BuildContext context) {
    return GetBuilder<FeaturedCourseController>(
      init: FeaturedCourseController(),
      builder: (controller) => GestureDetector(
        onTap: () {
          widget.onTapFund!.call();
        },
        child: Container(
          padding: EdgeInsets.all(8.h),
          decoration: AppDecoration.fillGray.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder12,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 115.v,
                width: 174.h,
                child: Stack(
                  alignment: Alignment.topRight,
                  children: [
                    CustomImageView(
                      imagePath: widget.favoriteGridItemModelObj.image!,
                      height: 115.v,
                      width: 174.h,
                      radius: BorderRadius.circular(
                        12.h,
                      ),
                      alignment: Alignment.center,
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        top: 8.v,
                        right: 8.h,
                      ),
                      child: CustomIconButton(
                        onTap: () {
                          widget.favoriteGridItemModelObj.isLike =
                              !widget.favoriteGridItemModelObj.isLike!;
                          if (widget.favoriteGridItemModelObj.isLike!) {
                            favorite1Controller.favouriteList
                                .add(widget.favoriteGridItemModelObj);
                            favorite1Controller.update();
                          } else {
                            favorite1Controller.favouriteList
                                .remove(widget.favoriteGridItemModelObj);
                            favorite1Controller.update();
                          }
                          controller.update();
                        },
                        height: 28.adaptSize,
                        width: 28.adaptSize,
                        padding: EdgeInsets.all(6.h),
                        alignment: Alignment.topRight,
                        child: CustomImageView(
                          color: appTheme.black900,
                          imagePath: widget.favoriteGridItemModelObj.isLike!
                              ? ImageConstant.imgFavouriteIcon
                              : ImageConstant.imgUnFavouriteIcon,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 9.v),
              Align(
                alignment: Alignment.centerLeft,
                child: SizedBox(
                  width: 155.h,
                  child: Text(
                    widget.favoriteGridItemModelObj.title!,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: theme.textTheme.titleSmall!.copyWith(
                      color: appTheme.black900,
                      height: 1.50,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 17.v),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CustomImageView(
                        imagePath: widget.favoriteGridItemModelObj.userImage!,
                        height: 30.adaptSize,
                        width: 30.adaptSize,
                        radius: BorderRadius.circular(
                          15.h,
                        ),
                        margin: EdgeInsets.only(bottom: 2.v),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 8.h),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              widget.favoriteGridItemModelObj.userName!,
                              style: theme.textTheme.labelLarge!.copyWith(
                                color: appTheme.black900,
                              ),
                            ),
                            SizedBox(height: 2.v),
                            Text(
                              widget.favoriteGridItemModelObj.userType!,
                              style: theme.textTheme.bodySmall!.copyWith(
                                color: appTheme.black900,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 0.h,
                      top: 7.v,
                      bottom: 10.v,
                    ),
                    child: Text(
                      widget.favoriteGridItemModelObj.price!,
                      style: theme.textTheme.labelLarge!.copyWith(
                        color: appTheme.black900,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
