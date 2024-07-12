import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:get/get_navigation/src/routes/transitions_type.dart';

import '../presentation/home_screen_container_screen/binding/home_screen_container_binding.dart';
import '../presentation/home_screen_container_screen/home_screen_container_screen.dart';
import '../presentation/log_in_screen/binding/log_in_binding.dart';
import '../presentation/log_in_screen/log_in_screen.dart';
import '../presentation/onboarding1_screen/binding/onboarding1_binding.dart';
import '../presentation/onboarding1_screen/onboarding1_screen.dart';
import '../presentation/sign_up_screen/binding/sign_up_binding.dart';
import '../presentation/sign_up_screen/sign_up_screen.dart';
import '../presentation/splash_screen/binding/splash_binding.dart';
import '../presentation/splash_screen/splash_screen.dart';

class AppRoutes {

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


  static List<GetPage> pages = [
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
  ];
}
