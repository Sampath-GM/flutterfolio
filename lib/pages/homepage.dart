import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:portfolio/constants/skills_items.dart';
import 'package:portfolio/custom_widgets/drawermobile.dart';
import 'package:portfolio/custom_widgets/header_desktop.dart';
import 'package:portfolio/custom_widgets/header_mobile.dart';
import 'package:portfolio/custom_widgets/main_desktop.dart';
import 'package:portfolio/custom_widgets/main_mobile.dart';

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

                      const SizedBox(height: 30,),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ConstrainedBox(
                            constraints: BoxConstraints(
                              maxWidth: 450,
                            ),
                            // paltform 
                            child: Wrap(
                              spacing: 5.0,
                              runSpacing: 5.0,
                              children: [
                                for(int i=0;i<platformitems.length;i++)
                                Container(
                                  width: 200,
                                  decoration: BoxDecoration(
                                    color: Color.fromARGB(255, 28, 29, 30),
                                    borderRadius: BorderRadius.circular(10.0)),
                                  child: ListTile(
                                    contentPadding: EdgeInsets.all(5.0),
                                    leading: Image.asset(platformitems[i]["img"],
                                      color: Colors.white,
                                      width: 30,
                                      height: 30,
                                    ),
                                    title: Text(platformitems[i]["title"],style: TextStyle(color: Colors.white),),
                                  ),
                                )
                              ],
                            ),
                          ),
                          SizedBox(width: 50,),
                    // my skills
                      Flexible(
                        child: ConstrainedBox(
                          constraints:const BoxConstraints(
                            maxWidth: 500.0,
                          ),
                          child: Wrap(
                            spacing: 10.0,
                            runSpacing: 10.0,
                            children: [
                              for(int i=0;i<skillsitems.length;i++)
                              Chip(
                             
                                label: Text(skillsitems[i]["title"]),
                                avatar:Image.asset(skillsitems[i]["img"]),
                                
                              )
                          
                            ],
                          ),
                        ),
                      )

                        ],
                      )

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