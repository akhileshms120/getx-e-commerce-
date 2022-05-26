import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:getx/screen/home_page.dart';

main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner:  false,
      home: HomePage(),
    );
  }
}
