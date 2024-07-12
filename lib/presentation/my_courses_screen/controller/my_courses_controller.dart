import 'package:flutter_e_learning_app/core/app_export.dart';
import 'package:flutter_e_learning_app/presentation/my_courses_screen/models/my_courses_model.dart';


class MyCoursesController extends GetxController {
  Rx<MyCoursesModel> myCoursesModelObj = MyCoursesModel().obs;
}
