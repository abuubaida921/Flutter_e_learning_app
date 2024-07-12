import 'package:flutter_e_learning_app/core/app_export.dart';
import 'package:flutter_e_learning_app/presentation/my_courses1_page/models/my_courses1_model.dart';

import '../models/fundlist_item_model.dart';

class MyCourses1Controller extends GetxController {
  List<FundlistItemModel> myCourcesList = MyCourses1Model.getMyCourcesList();
}
