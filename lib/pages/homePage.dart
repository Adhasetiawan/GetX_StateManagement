import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:second_app/control/homeControl.dart';

class homePage extends GetView<homeController>{
  @override
  Widget build(BuildContext context) => Scaffold(
    floatingActionButton: FloatingActionButton(
      onPressed: (){},
      child: Icon(CupertinoIcons.add),
    ),
    body: SafeArea(
      child: Stack(
        children: <Widget>[
          Center(
            child: Obx(() => Text('Masukan data ke- 1', style: TextStyle(fontSize: 20),)),
          )
        ],
      ),
    ),
  );
}
