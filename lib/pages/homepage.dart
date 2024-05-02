import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:portfolio/constants/skills_items.dart';
import 'package:portfolio/custom_widgets/drawermobile.dart';
import 'package:portfolio/custom_widgets/header_desktop.dart';
import 'package:portfolio/custom_widgets/header_mobile.dart';
import 'package:portfolio/custom_widgets/main_desktop.dart';
import 'package:portfolio/custom_widgets/main_mobile.dart';
import 'package:portfolio/custom_widgets/myskills_desktop.dart';
import 'package:portfolio/custom_widgets/myskills_mobile.dart';

class MyHomePage extends StatelessWidget {
   MyHomePage({super.key});
  final scaffoldkey = GlobalKey<ScaffoldState>();
  
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context,Constraints) {
        return Scaffold(
          key: scaffoldkey,
          backgroundColor: Colors.black,
          endDrawer:const Drawermobile(),
          body: ListView(
            scrollDirection: Axis.vertical,
            children: [

              //Header page mobile and Desktop view
              if(Constraints.maxWidth>=600.0)
                const Headerdesktop()
              else
                Headermobile(
                  onLogoTap: () {},
                  onMenuTap: () {
                  scaffoldkey.currentState?.openEndDrawer();
              },
             ),
              
              // Main page mobile and Desktop view
                if(Constraints.maxWidth>=600.0)
                  const Maindesktop()
                else
                  const Mainmobile(),
                SizedBox(height: 80.0,),
              //myskills      
                Container(
                  child:  Column(
                    children: [
                      Text("My Skills",
                        style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          color: Colors.white
                        ),
                      ),

                      const SizedBox(height: 70,),

                      if(Constraints.maxWidth>=600)
                        const MyskillsDesktop()
                      else
                        const MyskillsMobile(),
                    ],
                  ),
                height: 600,
                color: Colors.black,
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
    );
  }
}