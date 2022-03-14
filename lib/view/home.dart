import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/controller/homecontroller.dart';
import 'package:getx/view/pagefour.dart';
import 'package:getx/view/pageone.dart';
import 'package:getx/view/pagethree.dart';

import 'pagetwo.dart';
class Home extends StatelessWidget {
   Home({Key? key}) : super(key: key);
  final controller =Get.lazyPut(() => HomeController(),);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Center(
        child: Column(
          children: [
            MaterialButton(onPressed: (){
              Get.to(PageOne());

            }
              ,child: Text('Pageone',
              ),
              textColor: Colors.white,
              color: Colors.red,),
            SizedBox(height: 10,),
            MaterialButton(onPressed: (){
              Get.to(PageTwo());

            }
              ,child: Text('Pagetwo'),
              textColor: Colors.white,
              color: Colors.red,),
            SizedBox(height: 10,),
            MaterialButton(onPressed: (){
              Get.to(()=>PageThree());

            }
              ,child: Text('Pagethree'),
              textColor: Colors.white,
              color: Colors.red,),
            SizedBox(height: 10,),

        MaterialButton(onPressed: (){
      Get.to(()=>PageFour());

    }
    ,child: Text('Pagefour'),
    textColor: Colors.white,
    color: Colors.red,),
    SizedBox(height: 10,),

          ],
        ),
      ),
    );
  }
}
