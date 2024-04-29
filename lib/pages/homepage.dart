import 'package:flutter/material.dart';
import 'package:portfolio/constants/navigation_items.dart';
import 'package:portfolio/custom_widgets/header_desktop.dart';
import 'package:portfolio/custom_widgets/header_mobile.dart';
import 'package:portfolio/custom_widgets/logo.dart';

class MyHomePage extends StatelessWidget {
   MyHomePage({super.key});
  final Scaffoldkey = GlobalKey<ScaffoldState>();
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: Scaffoldkey,
      backgroundColor: Colors.black87,
      endDrawer: Drawer(),
      body: ListView(
        children: [
          // Headerdesktop(),
         Headermobile(
           onLogoTap: () {},
           onMenuTap: () {
            Scaffoldkey.currentState?.openEndDrawer();
          },
         ),

            Container(
            height: 600,
            color: Colors.blue[200],
          ),


            Container(
            height: 600,
            color: Colors.green[200],
          ),

          Container(
            height: 600,
            color: Colors.red[100],
          ),

          Container(
            height: 600,
            color: Colors.pink[100],
          ),
        ],
      ),
    );
  }
}