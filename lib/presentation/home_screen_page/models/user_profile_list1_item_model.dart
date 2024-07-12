import '../../../core/app_export.dart';

class UserProfileList1ItemModel {
 UserProfileList1ItemModel({this.userName, this.userRole, this.id, }) { userName = userName  ?? Rx("Ronald richards");userRole = userRole  ?? Rx("Instructor");id = id  ?? Rx(""); }

Rx<String>? userName;

Rx<String>? userRole;

Rx<String>? id;

 }
