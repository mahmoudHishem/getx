
import 'package:get/get.dart';

class RebuildController extends GetxController{

  int count1=0;
  int count2=0;
  void increamentone() {
    count1++;
    update();
  }
    void increamenttwo(){
      count2++;
      update();
    }
  void decreamentone() {
    count1++;
    update();
  }
  void decreamenttwo(){
    count2++;
    update();
  }
  int get sum =>count1+count2;
}