import 'package:flutter/material.dart';

class Maindesktop extends StatelessWidget {
  const Maindesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
                  child: Row(
                    children:[
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 200.0),
                            child: RichText(
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
                                      color: Color.fromARGB(255, 188, 71, 135)

                                    )
                                  ),
                                  TextSpan(
                                    text: " Developer",
                                  )
                                ]
                              ),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 300.0),
                          // borderRadius: BorderRadius.all(Radius.circular(85.0)),
                          child: CircleAvatar(
                            radius: 300,
                            child:ClipOval(          
                            child: Image.asset("images/Skills/sam.jpg",
                              height: 500,
                              width: 500,
                              fit: BoxFit.cover,
                              alignment: Alignment(-8.0, -0.7),
                              ),
                          ),
                          ),
                            
                      )
                    ],
                  ),
                height: 500,
                color: Colors.black,
              );
  }
}