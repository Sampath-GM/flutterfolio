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
                            child: Text("Hi,\nI'm Sampath \nA Flutter Developer",
                            style:TextStyle(
                              fontSize: 40,
                              color: Colors.white,
                              fontWeight: FontWeight.bold
                              ),),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 300.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.all(Radius.circular(85.0)),
                          child: Image.asset("images/sam.jpg",
                            height: 400,
                            width: 400,
                            )
                            ),
                      )
                    ],
                  ),
                height: 500,
                color: Colors.black,
              );
  }
}