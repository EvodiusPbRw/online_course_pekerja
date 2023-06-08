import 'package:flutter/material.dart';
import 'package:online_course_pekerja/views/elements/DialogMenuElement.dart';
import 'package:online_course_pekerja/views/parts/LoginPartView.dart';

import '../../elements/HomeAppBar.dart';
import '../../elements/SideBarElement.dart';
import 'HomePartAdminView.dart';

class TambahRekomendasiAdminView extends StatefulWidget{
  const TambahRekomendasiAdminView({super.key, required this.title});

  final String title;

  @override
  State<TambahRekomendasiAdminView> createState() => _TambahRekomendasiAdminViewState();
}

class _TambahRekomendasiAdminViewState extends State<TambahRekomendasiAdminView>{
  String judul = "", informasi = "", tentang = "", tools = "", materi = "";
  final _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          resizeToAvoidBottomInset: false,
          key: _scaffoldKey,
          appBar: HomeAppBar.appBar(super.widget.title, context, "tambah",scaffoldKey: _scaffoldKey, home: "admin"),
          drawer: SideBarElement.sideBar(context),
          body: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(height: 30,),
                Container(
                  child: Column(
                    children: [
                      Container(
                          child: Container(
                            width: double.infinity,
                            decoration: const BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(30),
                                  topRight: Radius.circular(30),
                                )
                            ),
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
                              child: SingleChildScrollView(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Judul Materi',
                                        style: TextStyle(
                                          fontFamily: 'Poppins',
                                          color: Colors.black,
                                          fontSize: Theme.of(context).textTheme.headline4?.fontSize,
                                        ),
                                      ),
                                      const SizedBox(height: 10),
                                      Container(
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(8),
                                            color: Colors.white,
                                            border: Border.all(color: Colors.black)
                                        ),
                                        child: TextField(
                                          decoration: InputDecoration(
                                            border: InputBorder.none,
                                            contentPadding: EdgeInsets.fromLTRB(10, 25, 10, 25),
                                            hintText: 'Masukkan judul rekomendasi',
                                            hintStyle: TextStyle(color: Colors.grey),
                                          ),
                                          style: TextStyle(color: Colors.black, fontSize: Theme.of(context).textTheme.headline5?.fontSize),
                                          onChanged: (value){
                                            setState(() {
                                              judul = value;
                                            });
                                          },
                                        ),
                                      ),
                                      const SizedBox(height: 20),
                                      Text(
                                        'Informasi Materi',
                                        style: TextStyle(
                                          fontFamily: 'Poppins',
                                          color: Colors.black,
                                          fontSize: Theme.of(context).textTheme.headline4?.fontSize,
                                        ),
                                      ),
                                      const SizedBox(height: 10),
                                      Container(
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(8),
                                            color: Colors.white,
                                            border: Border.all(color: Colors.black)
                                        ),
                                        child: TextField(
                                          decoration: InputDecoration(
                                            border: InputBorder.none,
                                            contentPadding: EdgeInsets.fromLTRB(10, 25, 10, 25),
                                            hintText: 'Masukkan informasi materi',
                                            hintStyle: TextStyle(color: Colors.grey),
                                          ),
                                          style: TextStyle(color: Colors.black, fontSize: Theme.of(context).textTheme.headline5?.fontSize),
                                          onChanged: (value){
                                            setState(() {
                                              informasi = value;
                                            });
                                          },
                                        ),
                                      ),
                                      const SizedBox(height: 20),
                                      Text(
                                        'Tentang Materi',
                                        style: TextStyle(
                                          fontFamily: 'Poppins',
                                          color: Colors.black,
                                          fontSize: Theme.of(context).textTheme.headline4?.fontSize,
                                        ),
                                      ),
                                      const SizedBox(height: 10),
                                      Container(
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(8),
                                            color: Colors.white,
                                            border: Border.all(color: Colors.black)
                                        ),
                                        child: TextField(
                                          maxLines: 8,
                                          decoration: InputDecoration(
                                            border: InputBorder.none,
                                            contentPadding: EdgeInsets.fromLTRB(10, 25, 10, 25),
                                            hintText: 'Masukkan tentang materi',
                                            hintStyle: TextStyle(color: Colors.grey),
                                          ),
                                          style: TextStyle(color: Colors.black, fontSize: Theme.of(context).textTheme.headline5?.fontSize),
                                          onChanged: (value){
                                            setState(() {
                                              tentang = value;
                                            });
                                          },
                                        ),
                                      ),
                                      const SizedBox(height: 20),
                                      Text(
                                        'Tools yang digunakan',
                                        style: TextStyle(
                                          fontFamily: 'Poppins',
                                          color: Colors.black,
                                          fontSize: Theme.of(context).textTheme.headline4?.fontSize,
                                        ),
                                      ),
                                      const SizedBox(height: 10),
                                      Container(
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(8),
                                            color: Colors.white,
                                            border: Border.all(color: Colors.black)
                                        ),
                                        child: TextField(
                                          maxLines: 8,
                                          decoration: InputDecoration(
                                            border: InputBorder.none,
                                            contentPadding: EdgeInsets.fromLTRB(10, 25, 10, 25),
                                            hintText: 'Masukkan tools yang digunakan',
                                            hintStyle: TextStyle(color: Colors.grey),
                                          ),
                                          style: TextStyle(color: Colors.black, fontSize: Theme.of(context).textTheme.headline5?.fontSize),
                                          onChanged: (value){
                                            setState(() {
                                              tools = value;
                                            });
                                          },
                                        ),
                                      ),
                                      const SizedBox(height: 20),
                                      Text(
                                        'Materi',
                                        style: TextStyle(
                                          fontFamily: 'Poppins',
                                          color: Colors.black,
                                          fontSize: Theme.of(context).textTheme.headline4?.fontSize,
                                        ),
                                      ),
                                      const SizedBox(height: 10),
                                      Row(
                                        children: [
                                          Expanded(
                                            flex: 6,
                                            child: Container(
                                              decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.circular(8),
                                                  color: Colors.white,
                                                  border: Border.all(color: Colors.black)
                                              ),
                                              child: TextField(
                                                decoration: InputDecoration(
                                                  border: InputBorder.none,
                                                  contentPadding: EdgeInsets.fromLTRB(10, 25, 10, 25),
                                                  hintText: 'Masukkan materi',
                                                  hintStyle: TextStyle(color: Colors.grey),
                                                ),
                                                style: TextStyle(color: Colors.black, fontSize: Theme.of(context).textTheme.headline5?.fontSize),
                                                onChanged: (value){
                                                  setState(() {
                                                    materi = value;
                                                  });
                                                },
                                              ),
                                            ),
                                          ),
                                          const SizedBox(width: 10),
                                          Container(
                                            child: Image.asset("assets/images/tambah.png"),
                                          )
                                        ],
                                      ),
                                      const SizedBox(height: 35),
                                      GestureDetector(
                                        onTap: () async {
                                          if(judul.isNotEmpty && informasi.isNotEmpty && tentang.isNotEmpty && tools.isNotEmpty && materi.isNotEmpty) {
                                            DialogMenuElement.openDialog(context, "Berhasil", "Tambah Rekomendasi Berhasil", const HomePartAdminView(title: 'Halo, Selamat Datang'));
                                          }
                                        },
                                        child: Container(
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(8),
                                            color:judul.isNotEmpty && informasi.isNotEmpty && tentang.isNotEmpty && tools.isNotEmpty && materi.isNotEmpty? Colors.blue :Colors.grey,
                                            // border: Border.all(color: Colors.black)
                                          ),
                                          child: Center(
                                            child: Padding(
                                              padding: EdgeInsets.fromLTRB(0,25,0,25),
                                              child: Text(
                                                'Tambah',
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: Theme.of(context).textTheme.headline4?.fontSize,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  )
                              ),
                            ),
                          )
                      )
                    ],
                  ),
                ),
                const SizedBox(height: 20),
              ],
            ),
          ),
        )
    );
  }
}