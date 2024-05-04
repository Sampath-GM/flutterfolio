import 'package:flutter/material.dart';
// ignore: avoid_web_libraries_in_flutter
import 'dart:js' as js;


class Projectcardwidget extends StatelessWidget {
  const Projectcardwidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 800,
      color: Colors.black,
        child:Column(
          children: [
            const Text("Projects",
            style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
                color: Colors.white
              ),
            ),
    
             Container(
              
                    clipBehavior: Clip.antiAlias,
                    height: 450,
                    width: 500,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 73, 66, 66),
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Image.asset(
                          "images/projects/instagram.jpeg",
                          height: 250,
                          width: 500,
                          fit:BoxFit.cover
                        ),
    
                        // title
                        const Padding(
                          padding: EdgeInsets.only(left:12 ,right:13 ,top:12 ,bottom:8 ),
                          child: Text(
                            "Instagram Clone",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 25.0,
                            ) ,
                            
                            ),
                        ),
    
                          //subtitle
    
                          const Padding(
                            padding: EdgeInsets.fromLTRB(12,00,12,12),
                            child: Text(
                            "Developed an Instagram-inspired app, leveraging my expertise in mobile app development and social media interfaces.",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15.0,
                            ) ,
                            
                            ),
                          ),
                          const Spacer(),
                          //footer
                          Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 10,
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
                                          js.context.callMethod("open",["https://www.youtube.com/watch?v=8V4qqE4JHC4&list=PPSV"]);
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
                  ) 
          ],
        
        ),
    );
  }
}