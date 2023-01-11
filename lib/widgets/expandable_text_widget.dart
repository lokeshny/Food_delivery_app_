  import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery_app/colors/app_colors.dart';
import 'package:food_delivery_app/utils/dimension.dart';
import 'package:food_delivery_app/widgets/small_text.dart';

class ExpandableTextWidget extends StatefulWidget {


    final String text;
    const ExpandableTextWidget({Key? key , required this.text}) : super(key: key);
    @override
    State<ExpandableTextWidget> createState() => _ExpandableTextWidgetState();
  }

  class _ExpandableTextWidgetState extends State<ExpandableTextWidget> {
  late String fisrtHalf;
  late String secondHalf;

  bool hiddenText = true;

  double textHeight = Dimensions.screenHeight/5.63;


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    if(widget.text.length> textHeight){
      fisrtHalf = widget.text.substring(0,textHeight.toInt());
      secondHalf = widget.text.substring(textHeight.toInt()+1,widget.text.length);
    }else{
      fisrtHalf = widget.text;
      secondHalf = '';
    }
  }
    @override
    Widget build(BuildContext context) {
      return Container(
        child: secondHalf.isEmpty ? SmallText(size:Dimensions.font16,text: fisrtHalf) : Column(
          children: [
            SmallText(height: 1.8,
                size:Dimensions.font16,text: hiddenText?('$fisrtHalf....'):(fisrtHalf+secondHalf)),
            InkWell(
              onTap: () {
                setState(() {
                  hiddenText =! hiddenText;
                });
              },
              child: Row(
                children:  [
                  hiddenText?SmallText( text: 'ShowMore,', color: AppColors.mainColor,)
                      : SmallText( text: 'Showless,', color: AppColors.mainColor,),
                  Icon(hiddenText?Icons.arrow_drop_down:Icons.arrow_drop_up,color: AppColors.mainColor,)
                ],
              ) ,
            )
          ],
        )
      );
    }
  }
