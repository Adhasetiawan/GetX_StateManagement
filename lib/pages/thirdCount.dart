import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:second_app/control/thirdHomeControl.dart';

class thirdCount extends GetView<thirdHomeControl> {
  @override
  Widget build(BuildContext context) => Scaffold(
        body: Obx(()=> RefreshIndicator(
          onRefresh: ()async => controller.onRefresh(),
          child: Stack(
            children: <Widget>[
              Container(
                color: Color(0xfff5f5f5),
              ),
              ListView.builder(
                  controller: controller.loadController,
                  itemCount: controller.allData.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text(
                        'ID : ${controller.allData[index].id}\nNama : ${controller.allData[index].firstName}',
                        style: TextStyle(fontSize: 40),
                      ),
                    );
                  }),
              (controller.loadingMore.isTrue) ? Align(
                alignment: Alignment.bottomCenter,
                child: Positioned(
                  child: CircularProgressIndicator(),
                ),
              ) : Material()
                ],
          ),
        )),
      );
}
