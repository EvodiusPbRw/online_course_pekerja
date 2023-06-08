import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:online_course_pekerja/views/elements/CardElement.dart';
import 'package:online_course_pekerja/views/parts/admin/LembagaPelatihanAdminView.dart';
import 'package:online_course_pekerja/views/parts/admin/LihatDaftarKursusAdminView.dart';
import 'package:online_course_pekerja/views/parts/admin/ListKejuruanAdminView.dart';
import 'package:online_course_pekerja/views/parts/admin/ListRekomendasiAdminView.dart';
import 'package:online_course_pekerja/views/parts/admin/TambahKejuruanAdminView.dart';
import 'package:online_course_pekerja/views/parts/admin/TambahKursusAdminView.dart';
import 'package:online_course_pekerja/views/parts/admin/TambahLembagaPelatihanView.dart';
import 'package:online_course_pekerja/views/parts/admin/TambahRekomendasiAdminView.dart';

import '../../../utils/HexColor.dart';
import '../../elements/HomeAppBar.dart';
import '../../elements/SideBarElement.dart';

class HomePartAdminView extends StatefulWidget{
  const HomePartAdminView({super.key, required this.title});
  final String title;

  @override
  State<StatefulWidget> createState() => _HomePartAdminViewState();
}

class _HomePartAdminViewState extends State<HomePartAdminView>{
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        resizeToAvoidBottomInset: false,
        key: _scaffoldKey,
        appBar: HomeAppBar.appBar(super.widget.title, context, "home",scaffoldKey: _scaffoldKey, home: "admin"),
        drawer: SideBarElement.sideBar(context),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child:Column(
              children: [
                const SizedBox(height: 20,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Lembaga Pelatihan",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: Theme.of(context).textTheme.headline3!.fontSize,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 20,),
                    GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const LembagaPelatihanAdminView(title: "Lembaga Pelatihan")));
                      },
                      child: CardElement.cardLembagaPelatihan(context, "Lihat Lembaga Pelatihan"),
                    ),
                    GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const TambahLembagaPelatihanView(title: 'Tambah Lembaga Pelatihan',)));
                      },
                      child: CardElement.cardLembagaPelatihan(context, "Tambah Lembaga Pelatihan"),
                    )
                  ],
                ),
                const SizedBox(height: 20,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "List Kursus",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: Theme.of(context).textTheme.headline3!.fontSize,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 20,),
                    GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const LihatDaftarKursusAdminView(title: 'Lihat Daftar Kursus',)));
                      },
                      child: CardElement.cardLembagaPelatihan(context, "Lihat Daftar Kursus"),
                    ),
                    GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const TambahKursusAdminView(title: 'Tambah Kursus',)));
                      },
                      child: CardElement.cardLembagaPelatihan(context, "Tambah Kursus"),
                    )
                  ],
                ),
                const SizedBox(height: 20,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Rekomendasi",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: Theme.of(context).textTheme.headline3!.fontSize,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 20,),
                    GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const ListRekomendasiAdminView(title: 'List Rekomendasi',)));
                      },
                      child: CardElement.cardLembagaPelatihan(context, "Lihat Daftar Rekomendasi"),
                    ),
                    GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const TambahRekomendasiAdminView(title: 'Tambah Rekomendasi',)));
                      },
                      child: CardElement.cardLembagaPelatihan(context, "Tambah Rekomendasi"),
                    )
                  ],

                ),
                const SizedBox(height: 20,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Kejuruan",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: Theme.of(context).textTheme.headline3!.fontSize,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 20,),
                    GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const ListKejuruanAdminView(title: 'List Kejuruan',)));
                      },
                      child: CardElement.cardLembagaPelatihan(context, "Lihat Daftar Kejuruan"),
                    ),
                    GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const TambahKejuruanAdminView(title: 'Tambah Kejuruan',)));
                      },
                      child: CardElement.cardLembagaPelatihan(context, "Tambah Kejuruan"),
                    )
                  ],
                ),
              ],
            ),
          )
        )
      ),
    );
  }

}