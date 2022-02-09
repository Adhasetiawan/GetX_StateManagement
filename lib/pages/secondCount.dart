import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:second_app/control/secondHomeControl.dart';

class secondCount extends GetView<secondHomeControl> {
  @override
  Widget build(BuildContext context) => Scaffold(
        body: SafeArea(
          child: Stack(
            children: <Widget>[
              Column(
                children: <Widget>[
                  Center(
                    child: Card(
                      margin: EdgeInsets.all(10),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)
                      ),
                      elevation: 2,
                      child: TextField(
                        controller: controller.edtId,
                        decoration: InputDecoration(
                            border: InputBorder.none
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(10),
                    child: Center(
                      child: Obx(() => Text((controller.id == 0) ? 'Masukan ID' : 'Id ke- ${controller.id} dan email saya ${controller.email}', style: TextStyle(fontSize: 18), textAlign: TextAlign.center,)),
                    ),
                  ),
                  ElevatedButton(
                      onPressed: () => controller.getSingleData(),
                      child: Text('Get data'))
                ],
              )
            ],
          ),
        ),
      );
}
