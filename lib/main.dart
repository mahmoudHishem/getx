import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/middleware/middleware.dart';
import 'package:getx/view/homepage.dart';
import 'package:getx/view/login.dart';
import 'package:sharedpreference/sharedpreference.dart';

import 'view/home.dart';
SharedPreference ? SharePref;
void main ()async{
  WidgetsFlutterBinding.ensureInitialized();
  SharePref = await SharedPreference.instance;
  runApp(MyApp());

}
class MyApp extends StatelessWidget {

   MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      getPages: [
        GetPage(name: "/", page: ()=>Login(),middlewares: [
          MiddleWare()
        ]),
        GetPage(name: "/Home", page: ()=>HomePage()),

      ],
    );
  }
}
