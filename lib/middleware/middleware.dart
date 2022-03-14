
import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';

import '../main.dart';

class MiddleWare extends GetMiddleware{
  @override
   RouteSettings ?redirct(String route){
    if(SharePref!.get('id')!=null) return RouteSettings(name: "/Home");
  }

}