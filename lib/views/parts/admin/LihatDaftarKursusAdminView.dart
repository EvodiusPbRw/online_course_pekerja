import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:online_course_pekerja/views/elements/CardElement.dart';

import '../../../utils/HexColor.dart';
import '../../elements/HomeAppBar.dart';

class LihatDaftarKursusAdminView extends StatefulWidget{
  const LihatDaftarKursusAdminView({super.key, required this.title});
  final String title;

  @override
  State<StatefulWidget> createState() => _LihatDaftarKursusAdminViewState();
}

class _LihatDaftarKursusAdminViewState extends State<LihatDaftarKursusAdminView>{
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: HexColor.getColor("#F7F7F7"),
        resizeToAvoidBottomInset: false,
        appBar: HomeAppBar.appBar(super.widget.title, context, "detail"),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Column(
              children: [
                const SizedBox(height: 30,),
                Column(
                  children: List.generate(3, (index) {
                    return Column(
                      children: [
                        CardElement.cardKursusAdmin(context, "UI/UX Designer", "Wireframing to visual design", "5.0"),
                        const SizedBox(height: 20,)
                      ],
                    );
                  }),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

}