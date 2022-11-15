import 'package:admin_panel_responsive_flutter/pages/panel_center/panel_center_page.dart';
import 'package:admin_panel_responsive_flutter/pages/panel_right/panel_right_page.dart';
import 'package:flutter/material.dart';

import '../../widgets/app_colum_widget.dart';
import '../../widgets/app_content_colum_widget.dart';
import '../charts.dart';
import '../panel_left/panel_left_page.dart';

class PanelCenterItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,    
            children: [
              Expanded(
                flex: 2,
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Container(
                    height: 300,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Add new items", style: TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold
                          ),),
                          Text("Each line here is progressively more opaque. The base color is material", style: TextStyle(
                            fontSize: 16.0,
                          ),),
                          SizedBox(height: 15,),
                          Row(
                            children: [
                              Icon(Icons.add_circle_outlined, color: Colors.pink, size: 20,),
                              SizedBox(width: 5,),
                              Text("Creating new item", style: TextStyle(
                                color: Colors.pink,
                                fontSize: 18.0,
                                fontWeight: FontWeight.bold
                              ),),
                            ],
                          )
                        ],
                      ),
                  ),
                ),
              ),
              ContentColum(
                backgroundColor: Colors.amber.shade100, 
                progressBackgroundColor: Colors.white, 
                progressColor: Colors.amber.shade800,
              ),
              SizedBox(width: 10.0),
              ContentColum(
                backgroundColor: Colors.red.shade100, 
                progressBackgroundColor: Colors.white, 
                progressColor: Colors.red.shade800, 
                pathImage: "images/logo_sen.png",
              ),
              SizedBox(width: 10.0),
              ContentColum(
                backgroundColor: Colors.blue.shade100, 
                progressBackgroundColor: Colors.white, 
                progressColor: Colors.blue.shade800,
                pathImage: "images/hp.png",
              ),
            ],
          ),
          SizedBox(height: 15.0),
          RecentDiscussions(),
          SizedBox(height: 15.0),
          Center(child: Text("Graficos...", style: TextStyle(fontSize: 18.0,),)),
          SizedBox(height: 10.0),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,    
            children: [
              Expanded(
                child: Container(
                  height: 300,
                  child: PanelLeftPage(),
                ),
              ),
              Expanded(
                child: Container(
                  height: 300,
                  child: PanelCenterPage(),
                ),
              ),
              Expanded(
                child: Container(
                  height: 300,
                  child: PanelRightPage(),
                ),
              ),
              Expanded(
                child: Container(
                  height: 300,
                  child: PieChartSample2(),
                ),)
            ],
          ),
        ],
      ),
    );
  }
}