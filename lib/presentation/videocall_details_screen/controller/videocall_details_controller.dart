import 'package:flutter_e_learning_app/core/app_export.dart';
import 'package:flutter_e_learning_app/presentation/videocall_details_screen/models/videocall_details_model.dart';

class VideocallDetailsController extends GetxController {
  Rx<VideocallDetailsModel> videocallDetailsModelObj =
      VideocallDetailsModel().obs;
}
