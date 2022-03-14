
import 'package:get/get.dart';

class HomeController extends GetxController{

  int counter =0;
  void inCreament(){
    counter++;
    update();
}
 void deCreament(){
    counter --;
    update();
 }
}