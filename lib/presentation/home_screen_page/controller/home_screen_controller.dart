import 'package:flutter/material.dart';
import 'package:flutter_e_learning_app/core/app_export.dart';
import 'package:flutter_e_learning_app/presentation/home_screen_page/models/home_screen_model.dart';
import '../models/slider_model.dart';

class HomeScreenController extends GetxController {
 List<SliderData> sliderData = HomeScreenModel.getSliderData();
  HomeScreenController(this.homeScreenModelObj);
  TextEditingController searchController = TextEditingController();
  Rx<HomeScreenModel> homeScreenModelObj;

  @override
  void onClose() {
    super.onClose();
    searchController.clear();
  }
}
