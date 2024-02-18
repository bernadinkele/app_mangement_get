import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:test_get/controller/counter_controller.dart';

class AnotherView extends StatelessWidget {
  const AnotherView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    CounterController c = Get.find();
    return Scaffold(
      appBar: AppBar(title: const Text("Another Page"),),
      body: Center(
        child: Text("${c.count}"),
      ),
    );
  }
}
