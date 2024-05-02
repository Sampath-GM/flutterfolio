import 'package:flutter/material.dart';
import 'package:portfolio/constants/skills_items.dart';

class MyskillsDesktop extends StatelessWidget {
  const MyskillsDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
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
                            maxWidth: 600.0,
                          ),
                          child: Wrap(
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
                          ),
                        ),
                      )
                        ],
                      );
  }
}