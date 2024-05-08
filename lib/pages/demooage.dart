import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final CarouselController _controller = CarouselController();

    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            CarouselSlider(
              carouselController: _controller,
              options: CarouselOptions(
                autoPlay: true,
                aspectRatio: 50/ 20,
                enlargeCenterPage: true,
              ),
              items: [
                Image.network('images/projects/insta_clone.jpeg'),
                Image.network('images/projects/quiz.jpeg'),
                Image.network('images/projects/instagram.jpeg'),
                // Add more images as needed
              ],
            ),
            SizedBox(height: 20), // Adjust spacing between slider and buttons if needed
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () => _controller.previousPage(),
                  child: Icon(Icons.arrow_back),
                ),
                SizedBox(width: 20), // Adjust spacing between buttons if needed
                ElevatedButton(
                  onPressed: () => _controller.nextPage(),
                  child: Icon(Icons.arrow_forward),
                ),
              ],
            ),
            
            // Other widgets below the slider
          ],
        ),
      ),
    );
  }
}
