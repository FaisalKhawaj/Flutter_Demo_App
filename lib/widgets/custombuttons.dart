
import 'package:flutter/material.dart';

class CustomButtons extends StatelessWidget {


  final String name;
  final Icon? icon;
  final Color? backgroundColor;
  final TextStyle? textStyle;
  final VoidCallback? callback;
  final Key? key;

  CustomButtons({
    required this.name,
    required this.icon,
    this.backgroundColor,
    this.textStyle,
    required this.callback,
    this.key,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: (){
      callback!();

    }, child:icon!=null? Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
      icon!,
        SizedBox(width: 10,),
        Text(name,style: TextStyle(
          fontSize: 13,
          fontFamily: 'Poppins',

        ),),
      ],
    ):Text(name,style: TextStyle(fontSize: 12)));
  }
}
