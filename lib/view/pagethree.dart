import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/view/pageone.dart';
import 'package:getx/view/pagetwo.dart';

import '../main.dart';

class PageThree extends StatelessWidget {
  const PageThree({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PageThree'),
      ),
      body: Center(
        child: Column(
          children: [
            MaterialButton(onPressed: (){
              Get.to(MyApp());
            },
              child: Text('Home'),textColor: Colors.white,
              color: Colors.red,),
            SizedBox(height: 10,),
            MaterialButton(onPressed: (){
              Get.to(PageOne());
            },
              child: Text('PageOne'),textColor: Colors.white,
              color: Colors.red,),
            SizedBox(height: 10,), MaterialButton(onPressed: (){
              Get.to(PageTwo());
            },
              child: Text('PageTwo'),textColor: Colors.white,
              color: Colors.red,),
            SizedBox(height: 10,),

          ],
        ),
      ),
    );
  }
}
