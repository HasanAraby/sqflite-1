import 'package:flutter/material.dart';
class CustomTextField extends StatelessWidget {
  String label;
  int lines;
  var onTap;
  bool read;
  CustomTextField({this.label,this.lines,this.onTap,this.read});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextField(
        onTap: onTap,
        readOnly: read,
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(13),
          ),
              focusedBorder:OutlineInputBorder(
               borderRadius: BorderRadius.circular(30),
          ) ,
            labelText:label,labelStyle: TextStyle(fontWeight: FontWeight.w900),

        ),
        maxLines: lines,
      ),
    );
  }
}
