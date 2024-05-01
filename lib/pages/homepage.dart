import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:portfolio/constants/navigation_items.dart';
import 'package:portfolio/custom_widgets/drawermobile.dart';
import 'package:portfolio/custom_widgets/header_desktop.dart';
import 'package:portfolio/custom_widgets/header_mobile.dart';
import 'package:portfolio/custom_widgets/logo.dart';
import 'package:portfolio/custom_widgets/maindesktop.dart';

class MyHomePage extends StatelessWidget {
   MyHomePage({super.key});
  final scaffoldkey = GlobalKey<ScaffoldState>();
  
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context,Constraints) {
        return Scaffold(
          key: scaffoldkey,
          backgroundColor: Colors.black87,
          endDrawer:const Drawermobile(),
          body: ListView(
            scrollDirection: Axis.vertical,
            children: [
              if(Constraints.maxWidth>=600.0)
                const Headerdesktop()
              else
                Headermobile(
                  onLogoTap: () {},
                  onMenuTap: () {
                  scaffoldkey.currentState?.openEndDrawer();
              },
             ),
        
                // const Maindesktop(),
                Container(
                  constraints: const BoxConstraints(minHeight: 560.0),
                  child: Column(
                    children: [
                      Image.asset("images/sam.jpg",
                        height: 300,
                        width: 300,
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      const Text("Hi,\nI'm Sampath \nA Flutter Developer",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 25,
                        ),
                      ),

                      
                    ],
                  ),

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
    );
  }
}