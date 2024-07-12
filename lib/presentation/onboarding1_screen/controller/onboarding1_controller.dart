import 'package:flutter/cupertino.dart';
import 'package:flutter_e_learning_app/core/app_export.dart';
import 'package:flutter_e_learning_app/presentation/onboarding1_screen/models/onboarding1_model.dart';

import '../models/learning_frame1_item_model.dart';

class Onboarding1Controller extends GetxController {
 List<LearningFrame1ItemModel> onboardingData = Onboarding1Model.getOnboardingData();
 PageController pageController = PageController();
 Rx<int> sliderIndex = 0.obs;
 int currentPage = 0;

 void setCurrentPage(int value) {
  currentPage = value;
  update();
 }
}
