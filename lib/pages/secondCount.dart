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
                  TextField(
                    controller: controller.edtId,
                  ),
                  Obx(() => Text(
                      'my email is ${controller.email} and the ID is ${controller.id}',
                      style: TextStyle(fontSize: 20))),
                  ElevatedButton(
                      onPressed: () => controller.getSingleData(),
                      child: Text('Check my data'))
                ],
              )
            ],
          ),
        ),
      );
}
