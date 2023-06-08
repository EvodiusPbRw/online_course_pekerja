import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:online_course_pekerja/views/elements/CardElement.dart';

import '../../../utils/HexColor.dart';
import '../../elements/HomeAppBar.dart';

class LembagaPelatihanAdminView extends StatefulWidget{
  const LembagaPelatihanAdminView({super.key, required this.title});
  final String title;

  @override
  State<StatefulWidget> createState() => _LembagaPelatihanAdminViewState();
}

class _LembagaPelatihanAdminViewState extends State<LembagaPelatihanAdminView>{
  List<String> lembaga = ["Karier.mu", "Skill Academy", "ProDigi", "Sekolah Pintar", "Cipta Karya Intelektuial (CKI) Center", "Techfor.id"];
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
                  children: List.generate(lembaga.length, (index) => CardElement.cardLembagaPelatihan(context, lembaga.elementAt(index))),
                )
              ],
            ),
          )
        ),
      ),
    );
  }

}