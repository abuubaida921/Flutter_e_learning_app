import 'package:flutter_e_learning_app/presentation/home_screen_page/models/slider_model.dart';
import 'package:flutter_e_learning_app/presentation/home_screen_page/models/user_profile_list1_item_model.dart';
import 'package:flutter_e_learning_app/presentation/home_screen_page/models/user_profile_list2_item_model.dart';
import 'package:flutter_e_learning_app/presentation/home_screen_page/models/user_profile_list_item_model.dart';

import '../../../core/app_export.dart';
import 'categories_column_item_model.dart';

/// and is typically used to hold data that is passed between different parts of the application.
class HomeScreenModel {
  static List<SliderData> getSliderData() {
    return [
      SliderData(ImageConstant.imgSliderBanner1,
          "Learn New Skills, advance Your Career"),
      SliderData(ImageConstant.imgSliderBanner2,
          "Learn New Skills, advance Your Career"),
      SliderData(ImageConstant.imgSliderBanner3,
          "Learn New Skills, advance Your Career"),
    ];
  }

  Rx<List<CategoriesColumnItemModel>> categoriesColumnItemList = Rx([
    CategoriesColumnItemModel(
        catDesigning: ImageConstant.imgCatDesigning.obs,
        designingText: "Designing".obs),
    CategoriesColumnItemModel(
        catDesigning: ImageConstant.imgCatMoney.obs,
        designingText: "Finance".obs),
    CategoriesColumnItemModel(
        catDesigning: ImageConstant.imgCatCode.obs,
        designingText: "Coding".obs),
    CategoriesColumnItemModel(
        catDesigning: ImageConstant.imgCatScience.obs,
        designingText: "Science".obs)
  ]);

  Rx<List<UserProfileListItemModel>> userProfileListItemList = Rx([
    UserProfileListItemModel(
        userImage: ImageConstant.imgGroupIndianCh.obs,
        learnNewSkills: "How to become an UI/UX designer".obs,
        userCircleImage: ImageConstant.imgEllipse2049.obs,
        userName: "Esther howards".obs,
        userInstructor: "Instructor".obs,
        userPrice: "50.00".obs),
    UserProfileListItemModel(
        userImage: ImageConstant.imgGroupIndianCh115x174.obs,
        learnNewSkills: "Online courses that fit your busy schedule".obs,
        userCircleImage: ImageConstant.imgEllipse204930x30.obs,
        userName: "Ronald richards".obs,
        userInstructor: "Cordinator".obs,
        userPrice: "30.00".obs)
  ]);

  Rx<List<UserProfileList1ItemModel>> userProfileList1ItemList = Rx([
    UserProfileList1ItemModel(
        userName: "Ronald richards".obs, userRole: "Instructor".obs),
    UserProfileList1ItemModel(
        userName: "Leslie alexander".obs, userRole: "Senior ui designer ".obs),
    UserProfileList1ItemModel(
        userName: "Ronald richards".obs, userRole: "Instructor".obs)
  ]);

  Rx<List<UserProfileList2ItemModel>> userProfileList2ItemList = Rx([
    UserProfileList2ItemModel(
        userImage: ImageConstant.imgGroupIndianCh114x114.obs,
        learnNewSkillsText: "Learn new skills, advance your career".obs,
        priceCircleImage: ImageConstant.imgEllipse20491.obs,
        instructorNameText: "Esther howards".obs,
        instructorTitleText: "Instructor".obs,
        priceText: "80.00".obs),
    UserProfileList2ItemModel(
        userImage: ImageConstant.imgGroupIndianCh1.obs,
        learnNewSkillsText:
            "Master the art of coding with our online courses".obs,
        priceCircleImage: ImageConstant.imgEllipse20492.obs,
        instructorNameText: "Jenny wilson".obs,
        instructorTitleText: "Cordinator".obs,
        priceText: "90.00".obs)
  ]);
}
