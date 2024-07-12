import 'package:flutter_e_learning_app/core/app_export.dart';
import 'package:flutter_e_learning_app/presentation/home_screen_container_screen/models/home_screen_container_model.dart';

class HomeScreenContainerController extends GetxController {
  Rx<HomeScreenContainerModel> homeScreenContainerModelObj =
      HomeScreenContainerModel().obs;
}
