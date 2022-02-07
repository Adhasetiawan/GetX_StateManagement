import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:second_app/binding/homeBind.dart';
import 'package:second_app/pages/homePage.dart';
import 'package:second_app/pages/secondCount.dart';
import 'package:second_app/utils/appPages.dart';
import 'package:second_app/utils/appRoutes.dart';

void main() async{
  homeBind().dependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const appView();
  }
}

class appView extends StatefulWidget {
  const appView({Key? key}) : super(key: key);

  @override
  _appViewState createState() => _appViewState();
}

class _appViewState extends State<appView> with WidgetsBindingObserver{
  String pageName = '';

  @override
  void initState() {
    WidgetsBinding.instance!.addObserver(this);
    super.initState();
  }

  @override
  void dispose() {
    WidgetsBinding.instance!.removeObserver(this);
    super.dispose();
  }

  updatePageRoute(value) {
    try {
      var name = value!.route!.settings.name.toString();
      print(name);
      setState(() {
        pageName = name;
      });
    } catch (_) {}
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);

    return ScreenUtilInit(
      designSize: const Size(375, 779),
        builder: ()=> GetMaterialApp(
          navigatorKey: Get.key,
          title: 'GetX-StateManagement',
          builder: (BuildContext context, Widget? child){
            return MediaQuery(
                data: MediaQuery.of(context).copyWith(textScaleFactor: 1),
                child: GestureDetector(
                  behavior: HitTestBehavior.translucent,
                  onTap: ()=> FocusManager.instance.primaryFocus?.unfocus(),
                  child: Stack(
                    children: [
                      child!,
                    ],
                  ),
                )
            );
          },
          getPages: appPages.pages,
          initialBinding: homeBind(),
          initialRoute: Routes.INITIAL,
          locale: const Locale('id', 'ID'),
          routingCallback: (value){
            if(value!= null){
              updatePageRoute(value);
            }
          },
          defaultTransition: Transition.cupertino,
        )
    );
  }
}

