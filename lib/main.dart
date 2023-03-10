import 'package:flutter/material.dart';
import 'package:food_delivery_app/pages/food/food_details_screen.dart';
import 'package:food_delivery_app/pages/food/recomded_food_detail.dart';
import 'package:food_delivery_app/pages/home/main_food_page.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home:  const RecommendedFoodDetail(),
    );
  }
}

