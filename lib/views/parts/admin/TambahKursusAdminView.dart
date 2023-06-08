import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:online_course_pekerja/views/elements/ButtonElement.dart';
import 'package:online_course_pekerja/views/elements/DialogMenuElement.dart';
import 'package:online_course_pekerja/views/elements/TextElement.dart';

import '../../../utils/HexColor.dart';
import '../../elements/HomeAppBar.dart';
import 'HomePartAdminView.dart';

class TambahKursusAdminView extends StatefulWidget{

  const TambahKursusAdminView({super.key, required this.title});

  final String title;

  @override
  State<StatefulWidget> createState() => _TambahKursusAdminViewState();
}

class _TambahKursusAdminViewState extends State<TambahKursusAdminView>{
  String namaKursus = "";
  String materi = "";

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
                    'Nama Kursus',
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
                      decoration: TextElement.inputTextField("Masukkan Kursus"),
                      style: TextStyle(color: Colors.black, fontSize: Theme.of(context).textTheme.headline4?.fontSize),
                      onChanged: (value){
                        setState(() {
                          namaKursus = value;
                        });
                      },
                    ),
                  ),
                  const SizedBox(height: 20,),
                  Text(
                    'Materi',
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
                      decoration: TextElement.inputTextField("Masukkan Materi"),
                      style: TextStyle(color: Colors.black, fontSize: Theme.of(context).textTheme.headline4?.fontSize),
                      onChanged: (value){
                        setState(() {
                          materi = value;
                        });
                      },
                    ),
                  ),
                  const SizedBox(height: 30,),
                  GestureDetector(
                    onTap: () async{
                      if(materi.isNotEmpty && namaKursus.isNotEmpty) DialogMenuElement.openDialog(context, "Berhasil", "Tambah Kursus Berhasil", const HomePartAdminView(title: 'Halo, Selamat Datang'));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: materi.isNotEmpty && namaKursus.isNotEmpty? Colors.blue : Colors.grey,
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