import 'package:get/get.dart';

import '../features/auth/presentation/screen/login_screen.dart';

class AppRoute {
  // Auth Section
  static String init = "/";

  static List<GetPage> routes = [
    GetPage(name: init, page: () => LoginScreen()),
  ];
}
