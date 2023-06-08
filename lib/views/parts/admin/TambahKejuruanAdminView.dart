import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:online_course_pekerja/views/elements/ButtonElement.dart';
import 'package:online_course_pekerja/views/elements/DialogMenuElement.dart';
import 'package:online_course_pekerja/views/elements/TextElement.dart';

import '../../../utils/HexColor.dart';
import '../../elements/HomeAppBar.dart';
import 'HomePartAdminView.dart';

class TambahKejuruanAdminView extends StatefulWidget{

  const TambahKejuruanAdminView({super.key, required this.title});

  final String title;

  @override
  State<StatefulWidget> createState() => _TambahKejuruanAdminViewState();
}

class _TambahKejuruanAdminViewState extends State<TambahKejuruanAdminView>{
  String nama = "";
  String tentang = "";

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
                    'Nama Kejuruan',
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
                      decoration: TextElement.inputTextField("Masukkan Kejuruan"),
                      style: TextStyle(color: Colors.black, fontSize: Theme.of(context).textTheme.headline4?.fontSize),
                      onChanged: (value){
                        setState(() {
                          nama = value;
                        });
                      },
                    ),
                  ),
                  const SizedBox(height: 20,),
                  Text(
                    'Tentang Kejuruan',
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
                      decoration: TextElement.inputTextField("Tentang Kejuruan"),
                      style: TextStyle(color: Colors.black, fontSize: Theme.of(context).textTheme.headline4?.fontSize,),
                      onChanged: (value){
                        setState(() {
                          tentang = value;
                        });
                      },
                      maxLines: 8,
                    ),
                  ),
                  const SizedBox(height: 40,),
                  GestureDetector(
                    onTap: () async{
                      if(nama.isNotEmpty && tentang.isNotEmpty) {
                        DialogMenuElement.openDialog(context, "Berhasil", "Tambah Kejuruan Berhasil", const HomePartAdminView(title: 'Halo, Selamat Datang'));
                      }
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: nama.isNotEmpty && tentang.isNotEmpty? Colors.blue : Colors.grey,
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