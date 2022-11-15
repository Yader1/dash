import 'package:admin_panel_responsive_flutter/widgets/app_card_image.dart';
import 'package:admin_panel_responsive_flutter/widgets/app_text_field_small.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class ContentColum extends StatelessWidget {
  Color? backgroundColor;
  Color? progressBackgroundColor;
  Color? progressColor;
  String pathImage = "";
  String pathUser = "";

  ContentColum({this.backgroundColor, this.progressBackgroundColor, this.progressColor, this.pathImage = "images/mapp.png", this.pathUser = "images/user_face.png"});

  @override
  Widget build(BuildContext context) {
    return  
    Container(
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: const BorderRadius.all(Radius.circular(10)),
        boxShadow: [
          BoxShadow(color: Colors.black12, offset: Offset(1, 1),
            spreadRadius: 0.5,
            blurRadius: 5,
          )
        ],
      ),
      height: 300,
      width: 250,
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 30.0),
            Container(
              height: 50.0,
              width: 50.0,
              child: Image.asset(pathImage)
            ),
            SizedBox(height: 60.0,),
            Text("Label Member"),
            SizedBox(height: 10.0,),
            Container(
              height: 50.0,
              width: 200.0,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  CardImage(pathUser),
                  CardImage(pathUser),
                  CardImage(pathUser),
                ],
              )
            ),
            SizedBox(height: 15.0,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SmallText(text: "Porcentaje", color: Colors.black87,),
                SmallText(text: "100%", color: Colors.black87, size: 14.0,),
              ],
            ),
            SizedBox(height: 10.0,),
            Container(
              child: LinearPercentIndicator(
                width: 220.0,
                lineHeight: 10.0,
                percent: 0.3,
                backgroundColor: progressBackgroundColor,
                progressColor: progressColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}