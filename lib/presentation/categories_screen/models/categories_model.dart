import '../../../core/app_export.dart';
import 'categories_grid_item_model.dart';

class CategoriesModel {

 static List<CategoriesGridItemModel> getCategoriesData(){
  return [
   CategoriesGridItemModel(ImageConstant.imgCatDesigning ,"Designing",appTheme.indigo50,1),
   CategoriesGridItemModel(ImageConstant.imgCar ,"Finance",appTheme.orange50,2),
   CategoriesGridItemModel(ImageConstant.imgCatCode ,"Coding",appTheme.blue5001,3),
   CategoriesGridItemModel(ImageConstant.imgCatScience ,"Science",appTheme.teal50,4),
   CategoriesGridItemModel(ImageConstant.imgCalculator ,"Maths",appTheme.red50,5),
   CategoriesGridItemModel(ImageConstant.imgCatPhysics ,"Physics",appTheme.lightBlue50,6),
   CategoriesGridItemModel(ImageConstant.imgGroup34219 ,"Marketing",appTheme.lightPurple,7),
   CategoriesGridItemModel(ImageConstant.imgCatStock ,"Stock market",appTheme.deepOrange50,8),
   CategoriesGridItemModel(ImageConstant.imgSearchIndigoA200 ,"Photography",appTheme.deepPurple,9),
   CategoriesGridItemModel(ImageConstant.imgCatAnalysis ,"data analysis",appTheme.blue50,10),
   CategoriesGridItemModel(ImageConstant.imgCatCloud ,"Cloud security",appTheme.teal50,11),
   CategoriesGridItemModel(ImageConstant.imgCatMachine ,"Machine learn",appTheme.purple,12),
  ];
 }



}
