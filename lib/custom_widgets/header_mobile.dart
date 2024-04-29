import 'package:flutter/material.dart';
import 'package:portfolio/custom_widgets/logo.dart';

class Headermobile extends StatelessWidget {
  const Headermobile({super.key, this.onLogoTap, this.onMenuTap});
  final VoidCallback? onLogoTap;
  final VoidCallback? onMenuTap;

  @override
  Widget build(BuildContext context) {
    return  Container(
            child: Row(
              children: [
               const Logo(),
                const Spacer(),
                IconButton(onPressed: (){}, 
                icon:const Icon(
                  Icons.menu,
                  color: Colors.white,
                  ))
              ],
            ),
          );
  }
}