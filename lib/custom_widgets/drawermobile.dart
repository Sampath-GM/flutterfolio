import 'package:flutter/material.dart';
import 'package:portfolio/constants/navigation_items.dart';

class Drawermobile extends StatelessWidget {
  const Drawermobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
        backgroundColor: Colors.black,
        child:ListView(
          children: [
            IconButton(onPressed: (){
              Navigator.of(context).pop();
            }, 
            icon: Align(
              alignment: Alignment.topLeft,
              child: Icon(Icons.close,
              color:Colors.white,),
            )),
            for(int i=0;i<Navicons.length;i++)
              ListTile(
                contentPadding: EdgeInsets.symmetric(horizontal: 30),
                textColor: Colors.white,
                leading:Icon(Navicons[i]),
                title: Text(NavTitles[i]),
              )
          ],
        )
        // child: Text("sam",style: TextStyle(color: Colors.white),),
      );
  }
}