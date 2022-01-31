import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:second_app/control/homeModel.dart';
import 'package:second_app/model/homeModel.dart';

class homeController extends GetxController {
  // var nilai = 0.obs;
  // void hitung () => nilai++;

  final homeModel model;
  homeController({required this.model});

  var edtName = TextEditingController();
  var edtJob = TextEditingController();

  var loading = false.obs;
  var nama = ''.obs;
  var job = ''.obs;
  var id = ''.obs;
  var time = ''.obs;

  @override
  void onClose() {
    super.onClose();
    edtName.dispose();
    edtJob.dispose();
  }

  postData()async{
    try{
      loading(true);
      var r = await model.homeMapper(name: edtName.text, job: edtJob.text);
      loading(false);
      if(r != null){
        Welcome user = Welcome.fromJson(r);

        nama.value = user.name;
        job.value = user.job;
        id.value = user.id;
        time.value = user.createdAt.toString();
      }
    }catch(_){
      loading(false);
    }
  }
}
