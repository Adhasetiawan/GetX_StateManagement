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
      onPressed: () => Get.off(secondCount()),
      child: Icon(CupertinoIcons.arrow_right),
    ),
    body: Stack(
      children: <Widget>[
        Container(
          color: Color(0xfff5f5f5),
        ),
        SafeArea(
          child: Column(
            children: <Widget>[
              Center(
                child: Card(
                  margin: EdgeInsets.all(10),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)
                  ),
                  elevation: 2,
                  child: TextField(
                    controller: controller.edtName,
                    decoration: InputDecoration(
                      border: InputBorder.none
                    ),
                  ),
                ),
              ),
              Center(
                child: Card(
                  margin: EdgeInsets.all(10),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)
                  ),
                  elevation: 2,
                  child: TextField(
                    controller: controller.edtJob,
                    decoration: InputDecoration(
                      border: InputBorder.none
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.all(10),
                child: Center(
                  child: Obx(() => Text((controller.nama == '' && controller.job == '') ? 'Data kosong' : 'Nama saya ${controller.nama} dan saya adalah seorang ${controller.job}', style: TextStyle(fontSize: 18), textAlign: TextAlign.center,)),
                ),
              ),
              ElevatedButton(onPressed: ()=> controller.postData(), child: Text('Post Data'),)
            ],
          ),
        )
      ],
    ),
  );
}
