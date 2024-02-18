import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:test_get/controller/app_controller.dart';
import 'package:test_get/translations/message_translations.dart';
import 'package:test_get/views/home_view.dart';

void main()async{
  await GetStorage.init();
    runApp(
        const App()
    );
}


class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(AppController());
    return  GetMaterialApp(
        translations: Messages(), // your translations
        locale:controller.currentLocal, // translations will be displayed in that locale
        fallbackLocale: const Locale('en', 'EN'),
        home: const Home()
    );
  }
}
