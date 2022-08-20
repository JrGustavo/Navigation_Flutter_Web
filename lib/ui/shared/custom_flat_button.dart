import 'package:flutter/material.dart';

class CustomFlatButton extends StatelessWidget {

  final String text;
  final Color color;
  final Function onPressed;

  const CustomFlatButton({
    Key? key,
   required  this.text,
   required this.onPressed,
    this.color = Colors.purple,

  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  TextButton(
      style: TextButton.styleFrom(
          primary: color
      ),
      onPressed: ()=>onPressed(),

      child: const Padding(
          padding: EdgeInsets.all(10.0),
          child: Text('Incrementar')),
    );
  }
}