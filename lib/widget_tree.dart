import 'package:admin_panel_responsive_flutter/pages/drawer/drawer_page.dart';
import 'package:admin_panel_responsive_flutter/pages/panel_center/panel_center_list.dart';
import 'package:admin_panel_responsive_flutter/pages/panel_center/panel_center_page.dart';
import 'package:admin_panel_responsive_flutter/pages/panel_left/panel_left_page.dart';
import 'package:admin_panel_responsive_flutter/pages/panel_right/panel_right_page.dart';
import 'package:admin_panel_responsive_flutter/responsive_layout.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

import 'widgets/app_bar_widget.dart';

class WidgetTree extends StatefulWidget {
  @override
  _WidgetTreeState createState() => _WidgetTreeState();
}

class _WidgetTreeState extends State<WidgetTree> {
  int currentIndex = 1;

  List<Widget> _icons = [
    Icon(Icons.add, size: 30),
    Icon(Icons.list, size: 30),
    Icon(Icons.compare_arrows, size: 30),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(double.infinity, 100),
        child: (ResponsiveLayout.isTinyLimit(context) ||
                ResponsiveLayout.isTinyHeightLimit(context))
            ? Container()
            : AppBarWidget(),
            
      ),
      body: ResponsiveLayout(
        tiny: Container(),
        phone: currentIndex == 0
            ? PanelLeftPage()
            : currentIndex == 1
                ? PanelCenterPage()
                : PanelRightPage(),
        tablet: Row(
          children: [
            Expanded(child: PanelLeftPage()),
            Expanded(
              child: PanelCenterPage(),
            )
          ],
        ),
        largeTablet: Row(
          children: [
            Expanded(child: PanelLeftPage()),
            Expanded(child: PanelCenterPage()),
            Expanded(
              child: PanelRightPage(),
            )
          ],
        ),
        computer: Padding(
          padding: const EdgeInsets.all(5.0),
          child: Row(
              children: [
                Expanded(child: DrawerPage()),
                SizedBox(width: 8,),
                Expanded(flex: 4, child: PanelCenterItem()),
              ],),
        ),
          ),
      drawer: DrawerPage(),
      bottomNavigationBar: ResponsiveLayout.isPhone(context)
          ? CurvedNavigationBar(
              index: currentIndex,
              backgroundColor: Colors.red.shade300,
              items: _icons,
              onTap: (index) {
                setState(() {
                  currentIndex = index;
                });
              },
            )
          : SizedBox(),
    );
  }
}
