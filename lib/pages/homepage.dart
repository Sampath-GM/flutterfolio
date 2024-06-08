import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:portfolio/constants/project_utils.dart';
import 'package:portfolio/constants/sociallinks.dart';
import 'package:portfolio/custom_widgets/certificate.dart';
import 'package:portfolio/custom_widgets/custom_textfield.dart';
import 'package:portfolio/custom_widgets/drawermobile.dart';
import 'package:portfolio/custom_widgets/header_desktop.dart';
import 'package:portfolio/custom_widgets/header_mobile.dart';
import 'package:portfolio/custom_widgets/main_desktop.dart';
import 'package:portfolio/custom_widgets/main_mobile.dart';
import 'package:portfolio/custom_widgets/myskills_desktop.dart';
import 'package:portfolio/custom_widgets/myskills_mobile.dart';
import 'dart:js' as js;

import 'package:portfolio/custom_widgets/project_card.dart';
import 'package:portfolio/pages/demooage.dart';

class MyHomePage extends StatelessWidget {
   MyHomePage({super.key});
  final scaffoldkey = GlobalKey<ScaffoldState>();
 
  @override
  Widget build(BuildContext context) {
    final currentHeight = MediaQuery.of(context).size.height;
    final currentWidth = MediaQuery.of(context).size.width;
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
              if(Constraints.maxWidth>600.0)
                const Headerdesktop()
              else
                Headermobile(
                  onLogoTap: () {},
                  onMenuTap: () {
                  scaffoldkey.currentState?.openEndDrawer();
              },
             ),
             const SizedBox(height: 50.0,),
              
              // Main page mobile and Desktop view
                if(Constraints.maxWidth>600.0)
                  const Maindesktop()
                else
                  const Mainmobile(),
                SizedBox(height: 50.0,),

                //myskills section     
                Container(
                  child:Column(
                    children: [
                      Text("My Skills",
                        style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          color: Colors.white
                        ),
                      ),

                      const SizedBox(height: 70,),

                      if(Constraints.maxWidth>600)
                        const MyskillsDesktop()
                      else
                        const MyskillsMobile(),
                    ],
                  ),
                color: Colors.black,
              ),
        
              const SizedBox(height: 10,),
              
              // project section 

              FractionallySizedBox(
                child: Container(
                  color: Colors.black,
                    child:
                      Column(
                        children: [
                          const Text("Projects",
                            style: TextStyle(
                            fontSize: 40,
                            fontWeight: FontWeight.bold,
                            color: Colors.white
                            ),
                          ),
                const SizedBox(height: 40,),
                
                Wrap(
                  spacing: 20,
                  runSpacing: 20,
                  children: [
                    for(int i=0;i<workprojects.length;i++)
                    Projectcardwidget(
                      workprojects: workprojects[i],
                    ),
                  ],
                ),
                        ]
                      )
                ),

              ),

             const SizedBox(height: 50,),

              //certificate section 
              MyCertificate(),
              
              // contact me

                          const SizedBox(height: 30,),
                                               
                          const Center(
                            child: Text(
                              "Contact me",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 40,
                                fontWeight: FontWeight.bold
                              ),
                              
                              )),
                          Padding(
                            padding: EdgeInsets.only(left: 700,top: 20),
                            child: Row(
                              children: [
                                InkWell(
                                  onTap: () {
                                    js.context.callMethod('open',['social_links.linkedin']);
                                  },
                                  child: Image.asset(
                                  'images/social_icons/github3.png',
                                  height: 50,width: 50,
                                  ),
                                ),

                                InkWell(
                                  child: Image.asset(
                                  'images/social_icons/linkedin.png',
                                  ),
                                ),
                                Image.asset('images/social_icons/facebook.png'),
                                Image.asset('images/social_icons/instagram.png'),
                              ],
                            ),
                          ),
             const SizedBox(height: 50,)  
            ],
          ),
        );
      }
    );
  }
}

