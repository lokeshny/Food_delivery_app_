import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery_app/colors/app_colors.dart';
import 'package:food_delivery_app/utils/dimension.dart';
import 'package:food_delivery_app/widgets/app_icon.dart';
import 'package:food_delivery_app/widgets/big_text.dart';
import 'package:food_delivery_app/widgets/expandable_text_widget.dart';

class RecommendedFoodDetail extends StatelessWidget {
  const RecommendedFoodDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            toolbarHeight: 80,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppIcons(icon: Icons.clear),
                AppIcons(icon: Icons.shopping_cart)
              ],
            ),
            bottom: PreferredSize(
              preferredSize: const Size.fromHeight(20),
              child: Container(
                color: Colors.white,
                width: double.maxFinite,
                padding: const EdgeInsets.only(top: 10, bottom: 10),
                child: Center(
                    child: BigText(
                  size: Dimensions.font26,
                  text: 'Indian tali',
                )),
              ),
            ),
            pinned: true,
            backgroundColor: AppColors.yellowColor,
            expandedHeight: 300,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                'asset/image/food.jpg',
                width: double.maxFinite,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverToBoxAdapter(
              child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(
                    left: Dimensions.width20, right: Dimensions.width20),
                child: ExpandableTextWidget(
                  text: 'of protein, carbohydrate, fat, and other '
                      'nutrients used in the body of an organism to '
                      'sustain growth and vital processes and to furnish energy.'
                      ' The absorption and utilization of food by the body is '
                      'fundamental to nutrition and is facilitated by digestion.'
                      'nutrients used in the body of an organism to '
                      'sustain growth and vital processes and to furnish energy.'
                      ' The absorption and utilization of food by the body is '
                      'of protein, carbohydrate, fat, and other '
                      'nutrients used in the body of an organism to '
                      'sustain growth and vital processes and to furnish energy.'
                      ' The absorption and utilization of food by the body is '
                      'fundamental to nutrition and is facilitated by digestion.'
                      'nutrients used in the body of an organism to '
                      'sustain growth and vital processes and to furnish energy.'
                      ' The absorption and utilization of food by the body is '
                      'fundamental to nutrition and is facilitated by digestion.'
                      'of protein, carbohydrate, fat, and other '
                      'nutrients used in the body of an organism to '
                      'sustain growth and vital processes and to furnish energy.'
                      ' The absorption and utilization of food by the body is '
                      'fundamental to nutrition and is facilitated by digestion.'
                      'nutrients used in the body of an organism to '
                      'sustain growth and vital processes and to furnish energy.'
                      ' The absorption and utilization of food by the body is '
                      'of protein, carbohydrate, fat, and other '
                      'nutrients used in the body of an organism to '
                      'sustain growth and vital processes and to furnish energy.'
                      ' The absorption and utilization of food by the body is '
                      'fundamental to nutrition and is facilitated by digestion.'
                      'nutrients used in the body of an organism to '
                      'sustain growth and vital processes and to furnish energy.'
                      ' The absorption and utilization of food by the body is '
                      'fundamental to nutrition and is facilitated by digestion.',
                ),
              )
            ],
          ))
        ],
      ),
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            padding: EdgeInsets.only(
              left: Dimensions.width20 * 2.5,
              right: Dimensions.width20 * 2.5,
              top: Dimensions.height10 * 2.5,
              bottom: Dimensions.height10 * 2.5,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppIcons(
                  iconColor: Colors.white,
                  backgroundColor: AppColors.mainColor,
                  icon: Icons.remove,
                ),
                BigText(
                  text: "\$12.88" + "X" + "0",
                  color: AppColors.mainBlackColor,
                  size: Dimensions.font26,
                ),
                AppIcons(
                    iconColor: Colors.white,
                    backgroundColor: AppColors.mainColor,
                    icon: Icons.add),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(
              top: Dimensions.height20,
              bottom: Dimensions.height20,
              left: Dimensions.width20,
              right: Dimensions.width20,
            ),
            decoration: BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.circular(Dimensions.radius20),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,

              children: [
                Container(

                  child: Icon(Icons.favorite,
                  color: AppColors.mainColor,),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20)
                  ),
                  height: 65,
                  width: 65,
                ),
                Container(
                  padding: EdgeInsets.only(
                    top: Dimensions.height20,
                    bottom: Dimensions.height20,
                    left: Dimensions.width20,
                    right: Dimensions.width20,
                  ),
                  decoration: BoxDecoration(
                    color: AppColors.mainColor,
                    borderRadius: BorderRadius.circular(Dimensions.radius20),
                  ),
                  child: BigText(
                    text: '\$10 | Add to cart',
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),

        ],
      ),
    );
  }
}
