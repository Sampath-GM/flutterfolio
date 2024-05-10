import 'package:flutter/material.dart';
// ignore: avoid_web_libraries_in_flutter
import 'dart:js' as js;
import 'package:portfolio/constants/project_utils.dart';


class Projectcardwidget extends StatelessWidget {
  const Projectcardwidget({
    super.key,
    required this.workprojects,
    
  });
  final Projectutils workprojects;

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenheight = MediaQuery.of(context).size.height;
    return  Padding(
      padding: const EdgeInsets.only(left: 20.0,right: 20.0),
      child: Container(             
                      clipBehavior: Clip.antiAlias,
                      height: 350,
                      width: 400,
                      decoration: BoxDecoration(
                        boxShadow:[
                          BoxShadow(
                            blurRadius: 7,
                            color: Colors.white.withOpacity(0.5),
                            offset: Offset(0, 3)
                          )
                        ],
                        color: const Color.fromARGB(255, 73, 66, 66),
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Image.asset(
                            // "images/projects/instagram.jpeg",
                            workprojects.image,
                            height: 180,
                            width: 400,
                            fit:BoxFit.cover
                          ),
      
                          // title
                           Padding(
                            padding: EdgeInsets.only(left:12 ,right:13 ,top:12 ,bottom:8 ),
                            child:  Text(
                              // "Instagram Clone",
                              workprojects.title,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20.0,
                              ) ,                          
                              ),
                          ),
      
                            //subtitle
      
                             Padding(
                              padding: EdgeInsets.fromLTRB(12,00,12,12),
                              child: Text(
                              // "Developed an Instagram-inspired app, leveraging my expertise in mobile app development and social media interfaces.",
                              workprojects.subtitle,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 13.0,
                              ),                            
                              ),
                            ),
                            // const Spacer(),
                            //footer
                            Container(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 5,
                                vertical: 12
                              ),
                              // height: 40,
                              // width: 500,
                              color: const Color.fromARGB(200, 63, 50, 56),
                              child: Row(
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                          "Avilabel on: ",
                                            style: TextStyle(
                                              color: Colors.amber[700]
                                            ),
                                        ),
                                      
                                      // const Spacer(),
                                      const SizedBox(width: 260,),
                                      Padding(
                                        padding: const EdgeInsets.only(left:10.0),
                                        child: InkWell(
                                          onTap: () {
                                            js.context.callMethod("open",[workprojects.ioslink]);
                                          },
                                          child: Image.asset(
                                            "images/Skills/ioa.png",
                                            color: Colors.white,
                                            width: 30,
                                            height: 30,
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 10.0),
                                        child: InkWell(
                                          onTap: (){
      
                                          },
                                          child: Image.asset(
                                            "images/Skills/android.png",
                                            color: Colors.white,
                                            width: 30,
                                            height: 30,
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 10.0),
                                        child: InkWell(
                                          onTap: (){
      
                                          },
                                          child: Image.asset(
                                            "images/Skills/web.png",
                                            color: Colors.white,
                                            width: 30,
                                            height: 30,
                                          ),
                                        ),
                                      )
                                    ],
                                  )
                                ],
                              
                              ),
                            )
                        ],
                      ),
                    ),
    ) ;
  }
}