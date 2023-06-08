import 'package:flutter/material.dart';

class HexColor{
  static Color getColor(String hex) {
    return Color(int.parse(hex.replaceFirst('#', '0xFF')));
  }
}