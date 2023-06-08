import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:online_course_pekerja/views/elements/CardElement.dart';

import '../../../utils/HexColor.dart';
import '../../elements/HomeAppBar.dart';

class LembagaPelatihanView extends StatefulWidget{
  const LembagaPelatihanView({super.key, required this.title});
  final String title;

  @override
  State<StatefulWidget> createState() => _LembagaPelatihanViewState();
}

class _LembagaPelatihanViewState extends State<LembagaPelatihanView>{
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: HexColor.getColor("#F7F7F7"),
        resizeToAvoidBottomInset: false,
        appBar: HomeAppBar.appBar(super.widget.title, context, "detail"),
        body: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                const SizedBox(height: 30,),
                Column(
                  children: List.generate(6, (index) => CardElement.cardLembagaPelatihan(context, "Karir.mu")),
                )
              ],
            ),
          )
        ),
      ),
    );
  }

}