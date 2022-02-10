import 'package:get/get.dart';
import 'package:second_app/control/homeControl.dart';
import 'package:second_app/control/homeModel.dart';
import 'package:second_app/control/secondHomeControl.dart';
import 'package:second_app/control/secondHomeModel.dart';
import 'package:second_app/control/thirdHomeControl.dart';
import 'package:second_app/control/thirdHomeModel.dart';

class homeBind implements Bindings{
  @override
  void dependencies() {
    Get.lazyPut(() => homeController(model: homeModel()));
    Get.lazyPut<secondHomeControl>(()=> secondHomeControl(scnModel: secondHomeModel()));
    Get.lazyPut<thirdHomeControl>(() => thirdHomeControl(thirdModel: thirdHomeModel()));
  }

}