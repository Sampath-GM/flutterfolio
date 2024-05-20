import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
// ignore: avoid_web_libraries_in_flutter
import 'dart:js' as js;
import 'package:portfolio/constants/project_utils.dart';


class Projectcardwidget extends StatefulWidget {
  const Projectcardwidget({
    super.key,
    required this.workprojects,
    
  });
  final Projectutils workprojects;

  @override
  State<Projectcardwidget> createState() => _ProjectcardwidgetState();
}

class _ProjectcardwidgetState extends State<Projectcardwidget> {
  bool _hovered = false;

  void _onEnter(PointerEvent details){
    setState(() {
      _hovered = true;
    });
    
  }
  void _onExit(PointerEvent details){
    setState(() {
      _hovered =false;
    });
    
  }
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenheight = MediaQuery.of(context).size.height;
    return  Padding(
      padding: const EdgeInsets.only(left: 20.0,right: 20.0),
      child: MouseRegion(
        onEnter: _onEnter,
        onExit: _onExit,
        child: AnimatedContainer(
          duration: Duration(seconds: 1),
                       
                        clipBehavior: Clip.antiAlias,
                        height: _hovered? 400 : 350,
                        width: _hovered? 500 : 400,
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
                              widget.workprojects.image,
                              height: 180,
                              width: 400,
                              fit:BoxFit.cover
                            ),
        
                            // title
                             Padding(
                              padding: EdgeInsets.only(left:12 ,right:13 ,top:12 ,bottom:8 ),
                              child:  Text(
                                // "Instagram Clone",
                                widget.workprojects.title,
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
                                widget.workprojects.subtitle,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 13.0,
                                ),                            
                                ),
                              ),
                              const Spacer(),
                              //footer
                             
                               
                                 FractionallySizedBox(
                                     child: Container(  
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: 10,
                                        vertical: 12,
                                      ),
                                      color: const Color.fromARGB(200, 63, 50, 56),
                                      child:Row(
                                            children: [
                                              Text(
                                                  "Avilabel on: ",
                                                    style: TextStyle(
                                                      color: Colors.amber[700]
                                                    ),
                                                ),
                                              
                                              const Spacer(),
                                              // const SizedBox(width: 130,),
                                            
                                                InkWell(
                                                  onTap: () {
                                                    js.context.callMethod("open",[widget.workprojects.ioslink]);
                                                  },
                                                  child: Image.asset(
                                                    "images/Skills/ioa.png",
                                                    color: Colors.white,
                                                    width: 25,
                                                    height: 25,
                                                  ),
                                                ),
                                     
                                                InkWell(
                                                  onTap: (){
                                                  },
                                                  child: Padding(
                                                    padding: const EdgeInsets.only(left: 10.0),
                                                    child: Image.asset(
                                                      "images/Skills/android.png",
                                                      color: Colors.white,
                                                      width: 25,
                                                      height: 25,
                                                    ),
                                                  ), 
                                                ),
                                                InkWell(
                                                  onTap: (){
                                          
                                                  },
                                                  child: Padding(
                                                    padding: const EdgeInsets.only(left: 10.0),
                                                    child: Image.asset(
                                                      "images/Skills/web.png",
                                                      color: Colors.white,
                                                      width: 25,
                                                      height: 25,
                                                    ),
                                                  ),
                                                ),
                                              
                                            ],
                                          )
                                                                    ),
                                   
                                 ),
                          ],
                        ),
                      ),
      ),
    ) ;
  }
}