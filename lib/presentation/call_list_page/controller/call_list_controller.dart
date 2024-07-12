import 'package:flutter_e_learning_app/core/app_export.dart';
import 'package:flutter_e_learning_app/presentation/call_list_page/models/call_list_model.dart';

import '../models/chatlist_item_model.dart';

class CallListController extends GetxController {
 List<ChatlistItemModel> callData = CallListModel.getCallData();
}
