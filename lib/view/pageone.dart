import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/controller/homecontroller.dart';
import 'package:getx/main.dart';
import 'package:getx/view/home.dart';
import 'package:getx/view/pagethree.dart';
import 'package:getx/view/pagetwo.dart';

class PageOne extends StatelessWidget {
  PageOne({Key? key}) : super(key: key);
   final HomeController  controller =Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PageOne'),
      ),
      body: Center(
        child: Column(
          children: [
            // MaterialButton(onPressed: (){
            //   Get.to(Home());
            // },
            // child: Text('Home'),textColor: Colors.white,
            //   color: Colors.red,),
            // SizedBox(height: 10,),
            // MaterialButton(onPressed: (){
            //   Get.to(PageTwo());
            // },
            //   child: Text('PageTwo'),textColor: Colors.white,
            //   color: Colors.red,),
            // SizedBox(height: 10,), MaterialButton(onPressed: (){
            //   Get.to(PageThree());
            // },
            //   child: Text('PageThree'),textColor: Colors.white,
            //   color: Colors.red,),
            // SizedBox(height: 40,),
           Center(
             child:  Container(
               child: Row(mainAxisAlignment: MainAxisAlignment.center,
                 children: [
                   IconButton(onPressed: (){
                     controller.inCreament();
                   }, icon: Icon(
                       Icons.add
                   )),
                   SizedBox(width: 5,),
                   GetBuilder<HomeController>(
                     builder: (controller)
                   =>Text('${controller.counter}'),
                   ),
                   SizedBox(width: 5,),

                   IconButton(onPressed: (){
                     controller.deCreament();
                   }, icon: Icon(
                       Icons.remove
                   )),

                 ],
               )
             ),
           )

          ],
        ),
      ),
    );
  }
}
