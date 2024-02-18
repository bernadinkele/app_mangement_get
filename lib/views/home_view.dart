import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:test_get/controller/counter_controller.dart';
import 'package:test_get/views/anther_view.dart';

import '../controller/app_controller.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(CounterController());
    final appController = Get.put(AppController());
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("hello".tr),
       Obx(() => Text("${controller.count}")),
         Row(
           mainAxisAlignment: MainAxisAlignment.spaceAround,
           children: [
             FilledButton(onPressed: () {
               controller.increment();
             }, child:const Text("appuyer"),
             ),
             FilledButton(onPressed: () {
               Get.to(const AnotherView());
             }, child:const Text("Navigate"),
             ),
             FilledButton(onPressed: () {
               appController.changeLocal();

             }, child:const Text("Change Language"),
             )


           ],
         )
        ],
      ),
    );
  }
}
