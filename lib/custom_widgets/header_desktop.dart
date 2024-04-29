import 'package:flutter/material.dart';
import 'package:portfolio/constants/navigation_items.dart';

class Headerdesktop extends StatelessWidget {
  const Headerdesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return   Container(
            height: 60,
            margin: const EdgeInsets.symmetric(
              horizontal: 20.0,
              vertical: 10.0
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15.0),
              color: Colors.transparent ),
            // color: Colors.black,
            child: Row(
              children: [
                const Text("SAM",style: TextStyle(color: Colors.white),),
                const Spacer(),
                for(int i=0;i<NavTitles.length;i++)
                TextButton(onPressed: (){},
                 child: Padding(
                   padding: const EdgeInsets.only(right: 20),
                   child: Text(NavTitles[i],
                   style: const TextStyle(
                    color: Colors.white
                    
                    ),
                   ),
                 ))
              ],
            ),
          );
  }
}


// class Headerdesktop {



