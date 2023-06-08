import 'package:flutter/material.dart';

import '../../utils/HexColor.dart';
class ButtonElement{
  static Widget buttonOutline(TextStyle txtStyle, String word){
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: HexColor.getColor("#1E85A7")),
      ),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(0,10,0,10),
          child: Text(
              word,
              softWrap: false,
              overflow: TextOverflow.ellipsis,
              style: txtStyle
          ),
        ),
      ),
    );
  }

  static Widget buttonInline(TextStyle txtStyle, String word){
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4),
        color: Colors.blue,
      ),
      child: Center(
        child: Padding(
          padding: EdgeInsets.fromLTRB(0,10,0,10),
          child: Text(
            word,
            style: txtStyle
          ),
        ),
      ),
    );
  }
}