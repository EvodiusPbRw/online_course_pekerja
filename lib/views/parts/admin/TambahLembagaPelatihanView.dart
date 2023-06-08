import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:online_course_pekerja/views/elements/ButtonElement.dart';
import 'package:online_course_pekerja/views/elements/DialogMenuElement.dart';
import 'package:online_course_pekerja/views/elements/TextElement.dart';

import '../../../utils/HexColor.dart';
import '../../elements/HomeAppBar.dart';
import 'HomePartAdminView.dart';

class TambahLembagaPelatihanView extends StatefulWidget{

  const TambahLembagaPelatihanView({super.key, required this.title});

  final String title;

  @override
  State<StatefulWidget> createState() => _TambahLembagaPelatihanViewState();
}

class _TambahLembagaPelatihanViewState extends State<TambahLembagaPelatihanView>{
  String namaLembaga = "";
  String link = "";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: HexColor.getColor("#F7F7F7"),
        resizeToAvoidBottomInset: false,
        appBar: HomeAppBar.appBar(super.widget.title, context, "detail"),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 30,),
                Text(
                  'Nama Lembaga Pelatihan',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    color: Colors.black,
                    fontSize: Theme.of(context).textTheme.headline4?.fontSize,
                  ),
                ),
                const SizedBox(height: 10),
                Container(
                  decoration: TextElement.boxTextField(),
                  child: TextField(
                    decoration: TextElement.inputTextField("Contoh: Skill Academy"),
                    style: TextStyle(color: Colors.black, fontSize: Theme.of(context).textTheme.headline4?.fontSize),
                    onChanged: (value){
                      setState(() {
                        namaLembaga = value;
                      });
                    },
                  ),
                ),
                const SizedBox(height: 20,),
                Text(
                  'Link/ Tautan',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    color: Colors.black,
                    fontSize: Theme.of(context).textTheme.headline4?.fontSize,
                  ),
                ),
                const SizedBox(height: 10),
                Container(
                  decoration: TextElement.boxTextField(),
                  child: TextField(
                    decoration: TextElement.inputTextField("https://www.skillacademy.com"),
                    style: TextStyle(color: Colors.black, fontSize: Theme.of(context).textTheme.headline4?.fontSize),
                    onChanged: (value){
                      setState(() {
                        link = value;
                      });
                    },
                  ),
                ),
                const SizedBox(height: 40,),
                GestureDetector(
                  onTap: () async{
                    if(namaLembaga.isNotEmpty && link.isNotEmpty) DialogMenuElement.openDialog(context, "Berhasil", "Tambah Lembaga Pelatihan Berhasil", const HomePartAdminView(title: 'Halo, Selamat Datang'));
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: namaLembaga.isNotEmpty && link.isNotEmpty? Colors.blue : Colors.grey,
                      // border: Border.all(color: Colors.black)
                    ),
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(0,25,0,25),
                        child: Text(
                          'Tambah',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: Theme.of(context).textTheme.button?.fontSize,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        ),
      ),
    );
  }

}