import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:online_course_pekerja/views/elements/ButtonElement.dart';
import 'package:online_course_pekerja/views/elements/CardElement.dart';

import '../../../utils/HexColor.dart';
import '../../elements/HomeAppBar.dart';

class OwnedListCourseView extends StatefulWidget{
  const OwnedListCourseView({super.key, required this.title});
  final String title;

  @override
  State<StatefulWidget> createState() => _OwnedListCourseViewtate();
}

class _OwnedListCourseViewtate extends State<OwnedListCourseView>{
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
            child: Column(
              children: [
                const SizedBox(height: 30,),
                CardElement.cardCourseOwned(context, "UI/UX Designer", "Wireframing to visual design", 10.0)
              ],
            ),
        )
        ),
      ),
    );
  }

}