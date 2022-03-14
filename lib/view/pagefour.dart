import 'package:flutter/material.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:get/state_manager.dart';
import 'package:getx/controller/rebuildcontroller.dart';
class PageFour extends StatelessWidget {
   PageFour({Key? key}) : super(key: key);
    final RebuildController controller =Get.put(RebuildController());

  @override
  Widget build(BuildContext context) {
    return GetBuilder<RebuildController>(
        init: RebuildController(),
        builder: (controller){

      return Column(

        children: [
          GetBuilder<RebuildController >(
              init: RebuildController(),
              builder: (controller){
                return Text('${controller.count1}');
              }),
          GetBuilder<RebuildController >(
              init: RebuildController(),
              builder: (controller){
                return Text('${controller.count2}');
              }),
          GetX<RebuildController >(
              builder: (controller){
                return Text('${controller.sum}');
              }),
          MaterialButton(onPressed: (){
            controller.increamentone();

          },
            child: Text('Add',style: TextStyle(color: Colors.white),),),
          MaterialButton(onPressed: (){
            controller.increamenttwo();

          },
            child: Text('Add',style: TextStyle(color: Colors.white),),),


        ],
      );
    });
  }
}
