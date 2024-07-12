import 'package:flutter_e_learning_app/core/app_export.dart';
import 'package:flutter_e_learning_app/presentation/featured_course_screen/models/featured_course_model.dart';

import '../models/favorite_grid_item_model.dart';

class FeaturedCourseController extends GetxController {
 List<FavoriteGridItemModel> featuredCourseList =
 FeaturedCourseModel.getFeaturedCourse();
}
