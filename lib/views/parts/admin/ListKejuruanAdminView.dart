import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:online_course_pekerja/views/elements/CardElement.dart';

import '../../../utils/HexColor.dart';
import '../../elements/HomeAppBar.dart';

class ListKejuruanAdminView extends StatefulWidget{
  const ListKejuruanAdminView({super.key, required this.title});
  final String title;

  @override
  State<StatefulWidget> createState() => _ListKejuruanAdminViewState();
}

class _ListKejuruanAdminViewState extends State<ListKejuruanAdminView>{
  List<String> kejuruan = ["Teknologi", "Pariwisata", "Pertanian", "Tata Boga"];
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
                  children: List.generate(kejuruan.length, (index) => CardElement.cardLembagaPelatihan(context, kejuruan.elementAt(index))),
                )
              ],
            ),
          )
        ),
      ),
    );
  }

}