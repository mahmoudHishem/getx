import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/view/login.dart';

import '../main.dart';
class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Home'),
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
                  SharePref!.clear!();
                  Get.toNamed("/");

                },
                child:Text('SignOut',
                  style: TextStyle(color: Colors.white),) ,
                )
              ),
            )
          ],
        )
    );
  }
}
