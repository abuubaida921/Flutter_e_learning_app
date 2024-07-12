import '../../../core/app_export.dart';

class CategoriesColumnItemModel {
  CategoriesColumnItemModel({
    this.catDesigning,
    this.designingText,
    this.id,
  }) {
    catDesigning = catDesigning ?? Rx(ImageConstant.imgCatDesigning);
    designingText = designingText ?? Rx("Designing");
    id = id ?? Rx("");
  }

  Rx<String>? catDesigning;

  Rx<String>? designingText;

  Rx<String>? id;
}
