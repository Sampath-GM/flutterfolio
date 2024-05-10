import 'package:flutter/material.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Colored Text Example'),
        ),
        body: Center(
          child: RichText(
            text: TextSpan(
              text: 'This is a ',
              style: TextStyle(color: Colors.black),
              children: <TextSpan>[
                TextSpan(
                  text: 'colored',
                  style: TextStyle(color: Colors.blue),
                ),
                TextSpan(
                  text: ' word in the sentence.',
                  style: TextStyle(color: Colors.black),
                ),
              ],
            ),
          ),
        ),
      );
    
  }
}




// import 'package:flutter/material.dart';
// import 'package:carousel_slider/carousel_slider.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: HomePage(),
//     );
//   }
// }

// class HomePage extends StatefulWidget {
//   @override
//   _HomePageState createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> {
//   int _currentIndex = 0;

//   final List<String> _images = [
//     'images/certificates/4AL22CS410.jpeg',
//     'images/certificates/Screenshot from 2024-05-08 20-00-34.png',
//     'images/certificates/Screenshot from 2024-05-08 20-01-08.png',
//     // Add more image paths as needed
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Carousel Slider with Dots Navigation'),
//       ),
//       body: Column(
//         children: [
//           CarouselSlider(
//             options: CarouselOptions(
//               height: 200.0,
//               viewportFraction: 1.0,
//               onPageChanged: (index, reason) {
//                 setState(() {
//                   _currentIndex = index;
//                 });
//               },
//             ),
//             items: _images.map((imagePath) {
//               return Builder(
//                 builder: (BuildContext context) {
//                   return Image.asset(
//                     imagePath,
//                     fit: BoxFit.cover,
//                   );
//                 },
//               );
//             }).toList(),
//           ),
//           SizedBox(height: 20.0),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: _images.map((imagePath) {
//               int index = _images.indexOf(imagePath);
//               return GestureDetector(
//                 onTap: () {
//                   setState(() {
//                     _currentIndex = index;
//                   });
//                 },
//                 child: Container(
//                   width: 10.0,
//                   height: 10.0,
//                   margin: EdgeInsets.symmetric(horizontal: 5.0),
//                   decoration: BoxDecoration(
//                     shape: BoxShape.circle,
//                     color: _currentIndex == index
//                         ? Colors.blue
//                         : Colors.grey[300],
//                   ),
//                 ),
//               );
//             }).toList(),
//           ),
//         ],
//       ),
//     );
//   }
// }







  