import 'dart:ui';

import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class AppController extends GetxController {
  final box = GetStorage();
  String get local => box.read('local') ?? "fr";
  Locale get currentLocal => Locale(local, local.toUpperCase());

  void changeLocal() {
    print(local);
    String locd;
    if(local=="fr"){
      locd= "en";
    }else{
      locd= "fr";
    }
    Get.updateLocale(Locale(locd, locd.toUpperCase()));
     box.write('local', locd);
  }
}
