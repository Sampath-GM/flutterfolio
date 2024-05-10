import 'package:flutter/material.dart';
import 'package:portfolio/pages/demooage.dart';
import 'package:portfolio/pages/homepage.dart';


void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      theme:ThemeData(
        primaryColor: Colors.black
      ),
      home:MyHomePage()
       
      // MyHomePage()
    );
  }
}


















// import "package:flutter/material.dart";

// void main(){
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: "Portfolio",
//       theme: ThemeData.dark(),
//       home: MyHomePage(),
//     );
//   }
// }


// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key});

//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("SAM",style: TextStyle(),),
//         backgroundColor: Colors.blue[200],
//         actions: [
//           ElevatedButton(onPressed: (){}, child: Text("Home")),
//            Padding(
//              padding:  EdgeInsets.only(left: 30.0),
//              child: ElevatedButton(onPressed: (){}, child: Text("About")),
//            ),
//             Padding(
//               padding: const EdgeInsets.only(left: 30.0),
//               child: ElevatedButton(onPressed: (){}, child: Text("Services")),
//             ),
//              Padding(
//                padding: const EdgeInsets.only(left: 30.0),
//                child: ElevatedButton(onPressed: (){}, child: Text("Portfolio")),
//              ),
//              Padding(
//                padding:  EdgeInsets.only(left: 30.0,right: 30),
//                child: ElevatedButton(onPressed: (){}, child: Text("Contact")),
//              ),
//         ],
//       ),
//       body:  Column(
//         children: [
//           Padding(
//             padding: EdgeInsets.only(top: 70.0),
//             child: Text("Flutter Developer",
//             style: TextStyle(
//               fontSize: 30
//             ),),
//           ),
//           Padding(
//             padding: EdgeInsets.only(left: 60.0,top: 10.0),
//             child: Text("Hi, i'm Sampath",
//             style: TextStyle(
//               fontSize: 50,
//             ),),
//           ),
//           Padding(
//             padding: EdgeInsets.only(left: 110.0),
//             child: Text("From shivamogga",
//             style: TextStyle(
//               fontSize: 50,
//             ),),
//           ),
//           Image.asset('images/sam.jpg',width: 500,height: 500),
          
//         ],  
//       )
      
//     );
//   }
// }





















