import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:second_app/binding/homeBind.dart';
import 'package:second_app/pages/homePage.dart';

void main() async{
  homeBind().dependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: "/home",
      getPages: [
        GetPage(name: "/home", page: ()=> homePage(), binding: homeBind())
      ],
    );
  }
}
