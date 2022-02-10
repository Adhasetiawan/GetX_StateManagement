import 'package:get/get.dart';
import 'package:second_app/control/thirdHomeModel.dart';
import 'package:second_app/model/thirdHomeDataModell.dart';

class thirdHomeControl extends GetxController {
  final thirdHomeModel thirdModel;
  thirdHomeControl({required this.thirdModel});

  @override
  void onInit() {
    super.onInit();
    getListData();
  }

  var loading = false.obs;
  // RxList<thirdWelcome> allData = RxList<thirdWelcome>();
  RxList<thirdWelcome> allData = <thirdWelcome>[].obs;

  getListData() async {
    try {
      loading(true);
      var r = await thirdModel.thirdHomeMapper();
      if (r != null) {
        List<dynamic> listDetail = r["data"];
        allData(RxList<thirdWelcome>.from(
            listDetail.map((e) => thirdWelcome.fromJson(e))));
      }
    } catch (_) {}
  }
}
