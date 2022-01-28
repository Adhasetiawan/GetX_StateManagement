import 'package:get/get.dart';
import 'package:second_app/control/homeControl.dart';
import 'package:second_app/control/homeModel.dart';

class homeBind implements Bindings{
  @override
  void dependencies() {
    Get.lazyPut(() => homeController(model: homeModel()));
  }

}