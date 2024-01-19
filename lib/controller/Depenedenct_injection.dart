import 'package:get/get.dart';
import 'package:rupiyo/controller/Network_Controller.dart';

class DependencyInjection{

static void init(){
  Get.put<NetworkController>(NetworkController(),permanent: true);
}

}