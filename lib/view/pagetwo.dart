import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/controller/homecontroller.dart';
import 'package:getx/main.dart';
import 'package:getx/view/pageone.dart';

class PageTwo extends StatelessWidget {
  const PageTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pagetwone'),
      ),
      body:
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                    child: GetBuilder<HomeController>(
                        builder: (controller)=>
                    Text("${controller.counter}")),
                  )
                ],
              ),
            )
      //
      // Center(
      //   child: Column(
      //     children: [
      //       MaterialButton(onPressed: (){
      //         Get.to(MyApp());
      //       },
      //         child: Text('Home'),textColor: Colors.white,
      //         color: Colors.red,),
      //       SizedBox(height: 10,),
      //       MaterialButton(onPressed: (){
      //         Get.to(PageOne());
      //       },
      //         child: Text('PageOne'),textColor: Colors.white,
      //         color: Colors.red,),
      //       SizedBox(height: 10,), MaterialButton(onPressed: (){},
      //         child: Text('PageThree'),textColor: Colors.white,
      //         color: Colors.red,),
      //       SizedBox(height: 10,),
      //
      //     ],
      //   ),
      // ),
    );
  }
}
