import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:user_list/ui/details/detail_binding.dart';
import 'package:user_list/ui/details/detail_view.dart';
import 'package:user_list/ui/home/home_binding.dart';
import 'package:user_list/ui/home/home_view.dart';
import 'package:user_list/utils/global_binding.dart';

void main() {
  Get.put(GlobalBinding());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialBinding: GlobalBinding(),
      initialRoute: '/',
      getPages: [
        GetPage(name: '/', page: ()=>HomeView(),binding: HomeBinding()),
        GetPage(name: '/detail', page: ()=>DetailView(),binding: DetailBinding())
      ],
    );
  }
}
