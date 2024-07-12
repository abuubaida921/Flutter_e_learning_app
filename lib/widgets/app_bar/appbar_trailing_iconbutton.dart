import 'package:flutter/material.dart';
import 'package:flutter_e_learning_app/core/app_export.dart';
import 'package:flutter_e_learning_app/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class AppbarTrailingIconButton extends StatelessWidget {
  AppbarTrailingIconButton({
    Key? key,
    this.imagePath,
    this.margin,
    this.onTap,
  }) : super(
    key: key,
  );

  String? imagePath;

  EdgeInsetsGeometry? margin;

  Function? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap!.call();
      },
      child: Padding(
        padding: margin ?? EdgeInsets.zero,
        child: CustomIconButton(
          height: 36.adaptSize,
          width: 36.adaptSize,
          decoration: IconButtonStyleHelper.fillOnErrorContainer,
          child: Padding(
            padding:  EdgeInsets.all(7.v),
            child: CustomImageView(
              color: appTheme.black900,
              imagePath: ImageConstant.imgLock,
            ),
          ),
        ),
      ),
    );
  }
}
