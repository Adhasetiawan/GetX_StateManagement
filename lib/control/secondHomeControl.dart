import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:second_app/control/secondHomeModel.dart';
import 'package:second_app/model/secondHomeModel.dart';

class secondHomeControl extends GetxController{
  final secondHomeModel scnModel;
  secondHomeControl({required this.scnModel});

  var edtId = TextEditingController();

  var loading = false.obs;
  var id = 0.obs;
  var email = ''.obs;

  @override
  void onClose() {
    super.onClose();
    edtId.dispose();
  }

  getSingleData()async{
    try{
      loading(true);
      var r = await scnModel.secondHomeMapper(id: int.parse(edtId.text));
      if(r != null){
        var detailKey = r['data'];
        WelcomeSecond returnData = WelcomeSecond.fromJson(detailKey);

        id.value = returnData.id;
        email.value = returnData.email;

        print (id.value);
      }
      loading(false);
    }catch(_){
      loading(false);
    }
  }
}