import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:second_app/control/homeControl.dart';
import 'package:second_app/control/secondHomeControl.dart';
import 'package:second_app/pages/secondCount.dart';
import 'package:second_app/utils/appRoutes.dart';

class homePage extends GetView<homeController>{
  @override
  Widget build(BuildContext context) => Scaffold(
    floatingActionButton: FloatingActionButton(
      onPressed: () => controller.postData(),
      child: Icon(CupertinoIcons.add),
    ),
    body: SafeArea(
      child: Column(
        children: <Widget>[
          Center(
            child: TextField(
              controller: controller.edtName,
            ),
          ),
          Center(
            child: TextField(
              controller: controller.edtJob,
            ),
          ),
          Center(
            child: Obx(() => Text('nama : ${controller.nama} kerja : ${controller.job}', style: TextStyle(fontSize: 20),)),
          ),
          ElevatedButton(onPressed: ()=> Get.toNamed(Routes.SEC_INITIAL), child: Text('intent'),)
        ],
      ),
    ),
  );
}
