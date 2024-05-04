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
                          child: Image.asset("images/Skills/sam.jpg",
                            height: 300,
                            width: 300,
                          ),
                        ),

                        // ShaderMask(
                        //   shaderCallback: (bounds) {
                        //     return  LinearGradient(
                        //       colors:[
                        //         Colors.black.withOpacity(1.0),
                        //         // Color.fromARGB(19, 237, 224, 224).withOpacity(0.4),
                        //         Color.fromARGB(31, 223, 205, 205).withOpacity(0.6),

                        //       ]).createShader(bounds);
                        //   },
                        //   child: Align(
                        //     alignment: Alignment.center,
                        //     child: Image.asset("images/sam.jpg",
                        //       height: 300,
                        //       width: 300,
                        //     ),
                        //   ),
                        // ),
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

                );
  }
}