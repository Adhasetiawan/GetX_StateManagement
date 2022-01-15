import 'package:get/get.dart';
import 'package:second_app/control/homeControl.dart';

class homeBind implements Bindings{
  @override
  void dependencies() {
    Get.lazyPut(() => homeController());
  }

}