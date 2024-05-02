import 'package:flutter/material.dart';
import 'package:portfolio/constants/skills_items.dart';

class MyskillsMobile extends StatelessWidget {
  const MyskillsMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
                        children: [
                          for(int i=0;i<platformitems.length;i++)
                          Container(
                            margin: EdgeInsets.only(left: 10.0,right: 10.0,top: 8.0),
                            width: double.infinity,
                            padding: EdgeInsets.only(top: 10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Color.fromARGB(255, 28, 29, 30),),
                            child: ListTile(
                              contentPadding: EdgeInsets.symmetric(vertical: 10.0,horizontal:20.0),
                              horizontalTitleGap: 25.0,
                              leading: Image.asset(
                                platformitems[i]["img"],
                                color: Colors.white,),
                              title: Text(platformitems[i]["title"],
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 30.0),
                          //skills
                          Wrap(
                            spacing: 10.0,
                            runSpacing: 10.0,
                            children: [
                              for(int i=0;i<skillsitems.length;i++)
                              Chip(
                                label: Text(skillsitems[i]["title"],
                                 style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold
                                //   color: Colors.white,
                                )
                                ),
                                avatar:Image.asset(skillsitems[i]["img"]),
                                // backgroundColor: Color.fromARGB(255, 28, 29, 30), 
                              )
                            ],
                          )
                        ],
                      );
                    
                  
  }
}