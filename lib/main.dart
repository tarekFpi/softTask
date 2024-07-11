import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get_storage/get_storage.dart';
import 'package:oktoast/oktoast.dart';
import 'package:softbd_task/core/features/home/home_screen.dart';
import 'package:softbd_task/core/features/home/nav/nav_screen.dart';
import 'package:softbd_task/core/theme/app_theme.dart';
import 'package:softbd_task/core/utils/hexcolor.dart';

void main() async{

  await GetStorage.init();

  runApp(MyApp());

  configLoading();
}

void configLoading() {
  EasyLoading.instance
    ..indicatorType = EasyLoadingIndicatorType.fadingCircle
    ..loadingStyle = EasyLoadingStyle.light
    ..backgroundColor = Colors.white
    ..indicatorColor = HexColor("#855EA9")
    ..textColor = Colors.black
    ..maskColor = Colors.white.withOpacity(0.8);
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return OKToast(
      child: GetMaterialApp(
        debugShowCheckedModeBanner: false,
        theme: AppTheme.lightTheme(),
        themeMode: ThemeMode.light,
        home:NavScreen(),
        builder: EasyLoading.init(),
      ),
    );
  }
}

