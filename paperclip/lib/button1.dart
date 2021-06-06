import 'package:flutter/material.dart';

class ButtonTime extends StatelessWidget {
  String text;
  Color color;
  ButtonTime({required this.text, required this.color});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 31,
      width: 55,
      child: TextButton(
        autofocus: false,
        style: ButtonStyle(
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.0),
          side: BorderSide(color: color),
        ))),
        onPressed: () {},
        child: Text(
          text,
          style: TextStyle(
            color: color,
            fontSize: 12,
          ),
        ),
      ),
    );
  }
}
