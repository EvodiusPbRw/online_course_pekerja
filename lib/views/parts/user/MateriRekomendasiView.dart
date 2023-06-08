import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../utils/HexColor.dart';
import '../../elements/HomeAppBar.dart';

class MateriRekomendasiView extends StatefulWidget{
  const MateriRekomendasiView({super.key, required this.title});
  final String title;

  @override
  State<StatefulWidget> createState() => _MateriRekomendasiViewState();
}

class _MateriRekomendasiViewState extends State<MateriRekomendasiView>{
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