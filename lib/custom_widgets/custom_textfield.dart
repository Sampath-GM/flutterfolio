import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, this.controller,this.maxlines =1,this.hintText});
  final int maxlines;
  final TextEditingController? controller;
  final String? hintText;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      maxLines: maxlines,
        style: TextStyle(
                  color: Colors.black
               ),
                      decoration: InputDecoration(
                              contentPadding: EdgeInsets.all(16.0),
                              filled: true,
                              focusedBorder: getInputBorder,
                              enabledBorder: getInputBorder,
                              border: getInputBorder,
                              hintText: hintText,
                                 
                            ),
          );
  }
  OutlineInputBorder get getInputBorder =>
     OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide.none
                            );
}