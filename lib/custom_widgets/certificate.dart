import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_controller.dart';
import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';


class MyCertificate extends StatelessWidget {
   MyCertificate({super.key});
   final CarouselController _controller = CarouselController();

  @override
  Widget build(BuildContext context) {
    final ScreenHeight = MediaQuery.of(context).size.height;
    return FractionallySizedBox(
                child: Container(
                  // child: SingleChildScrollView(
                    child:  Column(
                      children: [
                        Text(
                          "Certificates",
                            style: TextStyle(
                            color: Colors.white,
                            fontSize: 40,
                            fontWeight: FontWeight.bold
                            ),),
                            SizedBox(height: 20,),
                        CarouselSlider(
                          carouselController: _controller,
                          options: CarouselOptions(
                            autoPlay: true,
                        aspectRatio: 16/8,
                        height: 500,
                            enlargeCenterPage: true
                          ),
                          items: [
                              Image.network('images/certificates/cn.png'),
                              Image.network('images/certificates/codechef_java.png'),
                              Image.network('images/certificates/codechef.png'),
                              Image.network('images/certificates/infosys_python.png'),
                              Image.network('images/certificates/Nptel_java.png'),
                              Image.network('images/certificates/RPA_developer.png'),
                              Image.network('images/certificates/RPA_wipro.png'),
                              Image.network('images/certificates/sales_force.png'),
                          ]
                          ),
                           SizedBox(height: 20), 
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                    ElevatedButton(
                      onPressed: () => _controller.previousPage(),
                      child: Icon(Icons.arrow_back),
                    ),
                    SizedBox(width: 20), 
                    ElevatedButton(
                      onPressed: () => _controller.nextPage(),
                      child: Icon(Icons.arrow_forward),
                    ),
                                  ],
                                ),
                      ],
                    ),
                  // ),
                  height: ScreenHeight,
                  color: Colors.black,
                ),
              );
  }
}