import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:get/get_navigation/src/routes/transitions_type.dart';

import '../presentation/call_details_screen/binding/call_details_binding.dart';
import '../presentation/call_details_screen/call_details_screen.dart';
import '../presentation/chat_details_screen/binding/chat_details_binding.dart';
import '../presentation/chat_details_screen/chat_details_screen.dart';
import '../presentation/course_details_screen/binding/course_details_binding.dart';
import '../presentation/course_details_screen/course_details_screen.dart';
import '../presentation/favorite_screen/binding/favorite_binding.dart';
import '../presentation/favorite_screen/favorite_screen.dart';
import '../presentation/home_screen_container_screen/binding/home_screen_container_binding.dart';
import '../presentation/home_screen_container_screen/home_screen_container_screen.dart';
import '../presentation/log_in_screen/binding/log_in_binding.dart';
import '../presentation/log_in_screen/log_in_screen.dart';
import '../presentation/my_courses_screen/binding/my_courses_binding.dart';
import '../presentation/my_courses_screen/my_courses_screen.dart';
import '../presentation/onboarding1_screen/binding/onboarding1_binding.dart';
import '../presentation/onboarding1_screen/onboarding1_screen.dart';
import '../presentation/sign_up_screen/binding/sign_up_binding.dart';
import '../presentation/sign_up_screen/sign_up_screen.dart';
import '../presentation/splash_screen/binding/splash_binding.dart';
import '../presentation/splash_screen/splash_screen.dart';
import '../presentation/video_screen/video_screen/binding/video_binding.dart';
import '../presentation/video_screen/video_screen/video_screen.dart';
import '../presentation/videocall_details_screen/binding/videocall_details_binding.dart';
import '../presentation/videocall_details_screen/videocall_details_screen.dart';

class AppRoutes {
  static const String videoScreen = '/VideoScreen';
  static const String initialRoute = '/initialRoute';
  static const String onboarding1Screen = '/onboarding1_screen';
  static const String logInScreen = '/log_in_screen';
  static const String homeScreenContainerScreen = '/home_screen_container_screen';
  static const String signUpScreen = '/sign_up_screen';
  static const String courseDetailsAboutScreen = '/course_details_about_screen';
  static const String homeScreenPage = '/home_screen_page';
  static const String myCourses1Page = '/my_courses1_page';
  static const String favorite1Page = '/favorite1_page';
  static const String chatsPage = '/chats_page';
  static const String profileTabContainerPage = '/profile_tab_container_page';
  static const String favoriteScreen = '/favorite_screen';
  static const String myCoursesScreen = '/my_courses_screen';
  static const String courseDetailsScreen = '/course_details_screen';
  static const String chatDetailsScreen = '/chat_details_screen';
  static const String callDetailsScreen = '/call_details_screen';
  static const String videocallDetailsScreen = '/videocall_details_screen';


  static List<GetPage> pages = [

    GetPage(
      transition: Transition.rightToLeft,
      name: callDetailsScreen,
      page: () => CallDetailsScreen(),
      bindings: [
        CallDetailsBinding(),
      ],
    ),
    GetPage(
      transition: Transition.rightToLeft,
      name: videocallDetailsScreen,
      page: () => VideocallDetailsScreen(),
      bindings: [
        VideocallDetailsBinding(),
      ],
    ),
    GetPage(
      transition: Transition.rightToLeft,
      name: chatDetailsScreen,
      page: () => ChatDetailsScreen(),
      bindings: [
        ChatDetailsBinding(),
      ],
    ),
    GetPage(
      transition: Transition.rightToLeft,
      name: videoScreen,
      page: () => VideoScreen(),
      bindings: [
        VideoBinding()
      ],
    ),
    GetPage(
      transition: Transition.rightToLeft,
      name: initialRoute,
      page: () => SplashScreen(),
      bindings: [
        SplashBinding(),
      ],
    ),
    GetPage(
      transition: Transition.rightToLeft,
      name: onboarding1Screen,
      page: () => Onboarding1Screen(),
      bindings: [
        Onboarding1Binding(),
      ],
    ),
    GetPage(
      transition: Transition.rightToLeft,
      name: logInScreen,
      page: () => LogInScreen(),
      bindings: [
        LogInBinding(),
      ],
    ),
    GetPage(
      transition: Transition.rightToLeft,
      name: signUpScreen,
      page: () => SignUpScreen(),
      bindings: [
        SignUpBinding(),
      ],
    ),
    GetPage(
      transition: Transition.rightToLeft,
      name: homeScreenContainerScreen,
      page: () => HomeScreenContainerScreen(),
      bindings: [
        HomeScreenContainerBinding(),
      ],
    ),
    GetPage(
      transition: Transition.rightToLeft,
      name: favoriteScreen,
      page: () => FavoriteScreen(),
      bindings: [
        FavoriteBinding(),
      ],
    ),
    GetPage(
      transition: Transition.rightToLeft,
      name: myCoursesScreen,
      page: () => MyCoursesScreen(),
      bindings: [
        MyCoursesBinding(),
      ],
    ),
    GetPage(
      transition: Transition.rightToLeft,
      name: courseDetailsScreen,
      page: () => CourseDetailsScreen(),
      bindings: [
        CourseDetailsBinding(),
      ],
    ),
  ];
}
