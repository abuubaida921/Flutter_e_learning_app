import 'package:flutter_e_learning_app/core/app_export.dart';
import 'package:flutter_e_learning_app/presentation/categories_screen/models/categories_model.dart';

import '../models/categories_grid_item_model.dart';

class CategoriesController extends GetxController {
  List<CategoriesGridItemModel> categories =
      CategoriesModel.getCategoriesData();
}
