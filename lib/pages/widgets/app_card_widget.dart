import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

import '../../utils/dimenciones.dart';
import 'app_text_field_small.dart';

class AppCard extends StatelessWidget {
  Color color;
  final String pathImage;
  AppCard({this.color = const Color(0xF73422d2b), required this.pathImage});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Dimenciones.height30*8,
      width: Dimenciones.width30*6,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(10.0)),
        shape: BoxShape.rectangle,
        color: color
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                Image.asset(pathImage),
              ],
            ),
          ),
          SizedBox(height: Dimenciones.height45),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SmallText(text: "text ever since", color: Colors.black, size: Dimenciones.font16,),
              ///Img
              SizedBox(height: Dimenciones.height10),
              Container(
                child: Row(
                  children: [
                    SmallText(text: "Contrary to popular belief", color: Colors.black, size: Dimenciones.font16/1.6,),
                    SizedBox(width: Dimenciones.width15,),
                    SmallText(text: "70%", color: Colors.black, size: Dimenciones.font16/1.6,),
                  ],
                ),
              ),
              SizedBox(
                height: Dimenciones.height15,
              ),
              Container(
                child: LinearPercentIndicator(
                        width: Dimenciones.width30*6,
                        lineHeight: 5.0,
                        percent: 0.5,
                        // ignore: deprecated_member_use
                        linearStrokeCap: LinearStrokeCap.roundAll,
                        backgroundColor: Colors.white,
                        progressColor: Colors.green[400],
                      ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}