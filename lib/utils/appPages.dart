import 'package:get/get.dart';
import 'package:second_app/binding/homeBind.dart';
import 'package:second_app/pages/homePage.dart';
import 'package:second_app/pages/secondCount.dart';
import 'package:second_app/utils/appRoutes.dart';

class appPages{
  static final pages = [
    GetPage(
      name : Routes.INITIAL,
      page: () => homePage(),
      binding:homeBind()
    ),
    GetPage(
        name : Routes.SEC_INITIAL,
        page: () => secondCount(),
        binding:homeBind()
    ),
  ];
}