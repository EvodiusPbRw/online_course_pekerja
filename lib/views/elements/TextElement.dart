import 'package:flutter/material.dart';

class TextElement{
  static TextSpan pointText(String point, String desc){
    return TextSpan(
      children: [
        TextSpan(
            text: "$point\n",
            style: TextStyle(
                fontWeight: FontWeight.bold
            )
        ),
        WidgetSpan(child: SizedBox(width: 20.0)),
        TextSpan(
            text: desc
        ),
        TextSpan(
            text: "\n\n"
        ),
      ]
    );
  }

  static BoxDecoration boxTextField(){
    return BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Colors.white,
        border: Border.all(color: Colors.black)
    );
  }

  static InputDecoration inputTextField(String hint){
    return InputDecoration(
      border: InputBorder.none,
      contentPadding: const EdgeInsets.fromLTRB(10, 25, 10, 25),
      hintText: hint,
      hintStyle: const TextStyle(color: Colors.grey),
    );
  }

}