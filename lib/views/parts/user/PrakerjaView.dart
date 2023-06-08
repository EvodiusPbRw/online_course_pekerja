import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../utils/HexColor.dart';
import '../../elements/HomeAppBar.dart';

class PrakerjaView extends StatefulWidget{
  const PrakerjaView({super.key, required this.title});
  final String title;

  @override
  State<StatefulWidget> createState() => _PrakerjaViewState();
}

class _PrakerjaViewState extends State<PrakerjaView>{
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: HexColor.getColor("#F7F7F7"),
        resizeToAvoidBottomInset: false,
        appBar: HomeAppBar.appBar(super.widget.title, context, "detail"),

      ),
    );
  }

}