import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/view/homepage.dart';

import '../main.dart';
class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body:
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
         Container(
           padding: EdgeInsets.all(10),
           color: Colors.blue,
           child:  Center(
             child: MaterialButton(onPressed: (){
               SharePref!.set('id', '1');
               Get.offNamed("Home");

             },
               child:Text('login',
                 style: TextStyle(color: Colors.white),) ,
             )
           ),
         )
        ],
      )
    );
  }
}

