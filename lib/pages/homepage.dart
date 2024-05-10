import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:portfolio/constants/project_utils.dart';
import 'package:portfolio/constants/skills_items.dart';
import 'package:portfolio/custom_widgets/drawermobile.dart';
import 'package:portfolio/custom_widgets/header_desktop.dart';
import 'package:portfolio/custom_widgets/header_mobile.dart';
import 'package:portfolio/custom_widgets/main_desktop.dart';
import 'package:portfolio/custom_widgets/main_mobile.dart';
import 'package:portfolio/custom_widgets/myskills_desktop.dart';
import 'package:portfolio/custom_widgets/myskills_mobile.dart';
import 'dart:js' as js;

import 'package:portfolio/custom_widgets/project_card.dart';

class MyHomePage extends StatelessWidget {
   MyHomePage({super.key});
  final scaffoldkey = GlobalKey<ScaffoldState>();
   final CarouselController _controller = CarouselController();
  
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
              if(Constraints.maxWidth>600.0)
                const Headerdesktop()
              else
                Headermobile(
                  onLogoTap: () {},
                  onMenuTap: () {
                  scaffoldkey.currentState?.openEndDrawer();
              },
             ),
             SizedBox(height: 50.0,),
              
              // Main page mobile and Desktop view
                if(Constraints.maxWidth>600.0)
                  const Maindesktop()
                else
                  const Mainmobile(),
                SizedBox(height: 50.0,),
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

              SizedBox(height: 50,),
        
              FractionallySizedBox(
                child: Container(
                  // child: SingleChildScrollView(
                    child:  Column(
                      children: [
                        Text(
                          "Certificates",
                            style: TextStyle(
                            color: Colors.white,
                            fontSize: 40,
                            fontWeight: FontWeight.bold
                            ),),
                            SizedBox(height: 20,),
                        CarouselSlider(
                          carouselController: _controller,
                          options: CarouselOptions(
                            autoPlay: true,
                        //     aspectRatio: MediaQuery.of(context).size.width /
                        // MediaQuery.of(context).size.height,
                        aspectRatio: 16/8,
                        height: 600,
                            enlargeCenterPage: true
                          ),
                          items: [
                              Image.network('images/certificates/cn.png'),
                              Image.network('images/certificates/codechef_java.png'),
                              Image.network('images/certificates/codechef.png'),
                              Image.network('images/certificates/infosys_python.png'),
                              Image.network('images/certificates/Nptel_java.png'),
                              Image.network('images/certificates/RPA_developer.png'),
                              Image.network('images/certificates/RPA_wipro.png'),
                              Image.network('images/certificates/sales_force.png'),
                          ]
                          ),
                           SizedBox(height: 20), // Adjust spacing between slider and buttons if needed
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                    ElevatedButton(
                      onPressed: () => _controller.previousPage(),
                      child: Icon(Icons.arrow_back),
                    ),
                    SizedBox(width: 20), // Adjust spacing between buttons if needed
                    ElevatedButton(
                      onPressed: () => _controller.nextPage(),
                      child: Icon(Icons.arrow_forward),
                    ),
                                  ],
                                ),
                    
                    
                      ],
                    ),
                  // ),
                  height: 900,
                  color: Colors.black,
                ),
              ),
              Container(
                height: 800,
                color: Colors.black,
              )
            ],
          ),
        );
      }
    );
  }
}

