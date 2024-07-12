import 'package:flutter_e_learning_app/core/app_export.dart';
import 'package:flutter_e_learning_app/presentation/call_details_screen/models/call_details_model.dart';


class CallDetailsController extends GetxController {
  Rx<CallDetailsModel> callDetailsModelObj = CallDetailsModel().obs;
}
