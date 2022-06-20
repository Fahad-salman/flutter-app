import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:store_application/view/home_page.dart';
import 'package:store_application/view/login_page.dart';
import 'package:store_application/view/register_page.dart';
import 'package:store_application/view/set_new_password.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: F,
      home: Login_page(),
    );
  }
}