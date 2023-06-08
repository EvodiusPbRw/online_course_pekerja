import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:online_course_pekerja/utils/HexColor.dart';
import 'package:online_course_pekerja/views/elements/BannerElement.dart';
import 'package:online_course_pekerja/views/elements/CardElement.dart';
import 'package:online_course_pekerja/views/elements/HomeAppBar.dart';
import 'package:online_course_pekerja/utils/HexColor.dart';
import 'package:online_course_pekerja/views/exceptions/ExceptionsView.dart';
import 'package:online_course_pekerja/views/parts/user/LembagaPelatihanVIew.dart';
import 'package:online_course_pekerja/views/parts/user/LihatSemuaRekomendasiView.dart';
import 'package:online_course_pekerja/views/parts/user/OwnedListCourseView.dart';

import '../../elements/SideBarElement.dart';
import 'LihatSemuaKejuruanView.dart';
import 'PrakerjaView.dart';

class HomePartView extends StatefulWidget {
  const HomePartView({super.key, required this.title});
  final String title;

  @override
  State<HomePartView> createState() => _HomePartViewState();
}

class _HomePartViewState extends State<HomePartView>{
  final _scaffoldKey = GlobalKey<ScaffoldState>();

  final test = TextEditingController();
  String test_ori = "";
  String test_match = "Anjay";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.white,
          resizeToAvoidBottomInset: false,
          key: _scaffoldKey,
          appBar: HomeAppBar.appBar(super.widget.title, context, "home",scaffoldKey: _scaffoldKey),
          drawer: SideBarElement.sideBar(context),
          body: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Expanded(
                        flex: 8,
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: HexColor.getColor("#F3F3F3"),
                          ),
                          child: TextField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              contentPadding: const EdgeInsets.fromLTRB(10, 15, 10, 15),
                              prefixIcon: Icon(
                                Icons.search,
                                color: HexColor.getColor("#939393"),
                                size: 18,
                              ),
                              hintText: 'Cari sesuatu...',
                              hintStyle: TextStyle(color: HexColor.getColor("#939393")),
                            ),
                            style: TextStyle(color: Colors.black, fontSize: Theme.of(context).textTheme.headline6?.fontSize),
                            onChanged: (value){
                              setState(() {
                                test_ori = value;
                              });
                            },
                          ),
                        ),
                      ),
                      const SizedBox(width: 10,),
                      Expanded(
                        flex: 1,
                        child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: HexColor.getColor("#F3F3F3"),
                            ),
                            child: GestureDetector(
                              onTap: () {

                              },
                              child: Image.asset("assets/icons/filter.png", color: Colors.black87, height: 48,),
                            )
                        ),
                      )
                    ],
                  ),
                  const SizedBox(height: 30,),
                  !test_ori.contains(test_match) && test_ori == ""? Column(
                    children: [
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            GestureDetector(
                                onTap: (){
                                  Navigator.push(context, MaterialPageRoute(builder: (context) => const LembagaPelatihanView(title: "Lembaga Pelatihan")));
                                },
                                child: CardElement.cardKategori(context, "Lembaga Pelatihan", "#EFFAFC",FontAwesomeIcons.building)
                            ),
                            GestureDetector(
                                onTap: (){
                                  Navigator.push(context, MaterialPageRoute(builder: (context) => const OwnedListCourseView(title: "List Kursus yang diambil")));
                                },
                                child: CardElement.cardKategori(context, "List Kursus yang Diambil", "#FFDFDA",FontAwesomeIcons.listUl)
                            ),
                            GestureDetector(
                                onTap: (){
                                  Navigator.push(context, MaterialPageRoute(builder: (context) => const PrakerjaView(title: "Prakerja")));
                                },
                                child: CardElement.cardKategori(context, "Prakerja", "#FFF1C8",FontAwesomeIcons.book)
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 15),
                      const Divider(),
                      const SizedBox(height: 30),
                      Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Expanded(
                                  flex: 7,
                                  child: Text("Rekomendasi", style: TextStyle(fontSize: Theme.of(context).textTheme.headline3?.fontSize)),
                                ),
                                Expanded(
                                    flex: 3,
                                    child: GestureDetector(
                                      onTap: (){
                                        Navigator.push(context,
                                            MaterialPageRoute(
                                                builder: (context) => const LihatSemuaRekomendasiView(title: "Lihat Semua Rekomendasi")));
                                      },
                                      child: Text(
                                        "Lihat Semua",
                                        textAlign: TextAlign.right,
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold,
                                            color:
                                            HexColor.getColor("#46A3D7")
                                        ),
                                      )
                                    )
                                )
                              ],
                            ),
                            const SizedBox(height: 20),
                            SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: List.generate(3, (index){
                                    return Row(
                                      children: [
                                        CardElement.cardRekomendasi(context),
                                        SizedBox(width: index < 3-1? 20 : 0)
                                      ],
                                    );
                                  })
                              ),
                            )
                          ],
                        ),
                      ),
                      const SizedBox(height: 30),
                      Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Expanded(
                                  flex: 7,
                                  child: Text("Kejuruan", style: TextStyle(fontSize: Theme.of(context).textTheme.headline3?.fontSize)),
                                ),
                                Expanded(
                                    flex: 3,
                                    child: GestureDetector(
                                      onTap: (){
                                        Navigator.push(context,
                                            MaterialPageRoute(
                                                builder: (context) => const LihatSemuaKejuruanView(title: "Lihat Semua Kejuruan")));
                                      },
                                      child: Text(
                                        "Lihat Semua",
                                        textAlign: TextAlign.right,
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold,
                                            color:
                                            HexColor.getColor("#46A3D7")
                                        ),
                                      )
                                  )
                                )
                              ],
                            ),
                            const SizedBox(height: 20),
                            SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: List.generate(3, (index){
                                    return Row(
                                      children: [
                                        CardElement.cardKejuruan(context),
                                        SizedBox(width: index < 3-1? 20 : 0)
                                      ],
                                    );
                                  })
                              ),
                            )
                          ],
                        ),
                      ),
                      const SizedBox(height: 20,)
                    ],
                  )
                    :
                  test_match.toLowerCase().contains(test_ori.toLowerCase())?
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Rekomendasi", style: TextStyle(fontSize: Theme.of(context).textTheme.headline3?.fontSize)),
                      const SizedBox(height: 20),
                      Column(
                        children: List.generate(2, (index){
                          return Column(
                            children: [
                              Container(
                                  child: SingleChildScrollView(
                                      scrollDirection: Axis.horizontal,
                                      child: Row(
                                          children: List.generate(2, (index){
                                            return Row(
                                              children: [
                                                CardElement.cardRekomendasi(context),
                                                SizedBox(width: (index < 2-1? 20 : 0))
                                              ],
                                            );
                                          })
                                      )
                                  )
                              ),
                              const SizedBox(height: 20)
                            ],
                          );
                        }),
                      ),
                      Text("Kejuruan", style: TextStyle(fontSize: Theme.of(context).textTheme.headline3?.fontSize)),
                      const SizedBox(height: 20),
                      Column(
                        children: List.generate(2, (index){
                          return Column(
                            children: [
                              Container(
                                  child: SingleChildScrollView(
                                      scrollDirection: Axis.horizontal,
                                      child: Row(
                                          children: List.generate(2, (index){
                                            return Row(
                                              children: [
                                                CardElement.cardKejuruan(context),
                                                SizedBox(width: (index < 2-1? 20 : 0))
                                              ],
                                            );
                                          })
                                      )
                                  )
                              ),
                              const SizedBox(height: 20)
                            ],
                          );
                        }),
                      )
                    ]
                  )
                    :
                  ExceptionsView.notFound(context)
                ],
              ),
            ),
          )
      )
    );
  }
}