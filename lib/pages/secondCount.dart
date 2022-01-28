import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:second_app/control/homeControl.dart';

class secondCount extends StatelessWidget {
  const secondCount({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final homeController control = Get.find();

    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: <Widget>[
            Center(
              child: Text('Keluaran nilai ke- 1'),
            )
          ],
        ),
      ),
    );
  }
}
