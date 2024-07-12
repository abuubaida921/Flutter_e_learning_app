import '../controller/featured_course_controller.dart';
import 'package:get/get.dart';

class FeaturedCourseBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => FeaturedCourseController());
  }
}
