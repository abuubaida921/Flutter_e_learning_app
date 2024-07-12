import 'package:flutter_e_learning_app/core/app_export.dart';
import 'package:flutter_e_learning_app/presentation/course_details_screen/models/course_details_model.dart';

import '../models/widget_item_model.dart';

class CourseDetailsController extends GetxController {
 List<WidgetItemModel> lessonList =CourseDetailsModel.getLessonsList();
}
