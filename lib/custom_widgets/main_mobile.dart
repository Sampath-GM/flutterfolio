import 'package:flutter/material.dart';

class Mainmobile extends StatelessWidget {
  const Mainmobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
                  margin: EdgeInsets.symmetric(horizontal: 40.0,vertical: 30.0),
                  constraints: const BoxConstraints(minHeight: 560.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      
                        Align(
                          alignment: Alignment.center,
                           child: CircleAvatar(
                            radius: 150,
                            child:ClipOval(          
                            child: Image.asset("images/Skills/sam.jpg",
                              height: 300,
                              width: 300,
                              fit: BoxFit.cover,
                              alignment: Alignment(-8.0, -0.7),
                              ),
                          ),
                          ),
                        ),

                      const SizedBox(
                        height: 30,
                      ),
                         RichText(
                              text: TextSpan(
                                text: "Hi,\nI'm Sampath \nA ",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 45,
                                  fontWeight: FontWeight.bold
                                ),
                                children: <TextSpan>[
                                  TextSpan(
                                    text: "Flutter",
                                    style: TextStyle(
                                      color: Color.fromARGB(255, 188, 71, 135),

                                    )
                                  ),
                                  TextSpan(
                                    text: " Developer",
                                  )
                                ]
                              ),
                            ),
                    ],
                  ),

                );
  }
}