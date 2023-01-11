import 'package:flutter/material.dart';
import 'package:food_delivery_app/colors/app_colors.dart';
import 'package:food_delivery_app/widgets/big_text.dart';
import 'package:food_delivery_app/widgets/small_text.dart';

import 'food_page_body.dart';


class MainFoodPage extends StatefulWidget {
  const MainFoodPage({Key? key}) : super(key: key);

  @override
  State<MainFoodPage> createState() => _MainFoodPageState();
}

class _MainFoodPageState extends State<MainFoodPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 45,),
            padding: EdgeInsets.only(left: 20,right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children:  [
                   BigText(text: 'India',color: AppColors.mainColor),
                    Row(
                      children: [
                        SmallText(text: 'Bengaluru',color: Colors.black54,),
                        const Icon(Icons.arrow_drop_down_rounded)
                      ],
                    )

                  ],
                ),
                Container(
                  width: 45,
                  height: 45,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color:AppColors.mainColor,
                  ),
                  child: const Icon(Icons.search,color: Colors.white,),
                )
              ],
            ),
          ),
          const Expanded(child: SingleChildScrollView(child: FoodPageBody()))
        ],
      )
    );
  }
}
