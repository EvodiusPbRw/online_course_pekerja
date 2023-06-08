import 'package:autoscale_tabbarview/autoscale_tabbarview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:online_course_pekerja/utils/HexColor.dart';
import 'package:online_course_pekerja/views/elements/ButtonElement.dart';

import '../../elements/TextElement.dart';
import '../../elements/HomeAppBar.dart';
import 'MateriRekomendasiView.dart';

class DetailRekomendasiView extends StatefulWidget{
  const DetailRekomendasiView({super.key, required this.title});
  final String title;

  @override
  State<StatefulWidget> createState() => _DetailRekomendasiState();

}

class _DetailRekomendasiState extends State<DetailRekomendasiView>{
  void rebuildAllChildren(BuildContext context) {
    void rebuild(Element el) {
      el.markNeedsBuild();
      el.visitChildren(rebuild);
    }
    (context as Element).visitChildren(rebuild);
  }
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
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 20,),
                ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.asset("assets/images/lebih_gede.png")
                ),
                SizedBox(height: 20,),
                Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Expanded(
                            flex: 8,
                            child: Text("UI/UX Design", style: TextStyle(fontSize: Theme.of(context).textTheme.headline2?.fontSize),),
                          ),
                          Expanded(
                            flex: 2,
                            child: RichText(
                                text: TextSpan(
                                    children: [
                                      WidgetSpan(
                                          child: Icon(Icons.star, color: Colors.orange, size: Theme.of(context).textTheme.headline2?.fontSize)
                                      ),
                                      TextSpan(
                                          text: " "
                                      ),
                                      WidgetSpan(
                                          child: Text("5.0", style: TextStyle(color: Colors.black45, fontSize: Theme.of(context).textTheme.headline3?.fontSize),)
                                      )
                                    ]
                                )
                            ),
                          )
                        ],
                      ),
                      const SizedBox(height: 10,),
                      Text("Wireframing to Visual Design", textAlign: TextAlign.left, style: TextStyle(fontSize: Theme.of(context).textTheme.headline3?.fontSize, fontWeight: FontWeight.bold),),
                      const SizedBox(height: 20,),
                      DefaultTabController(
                        length: 3,
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: <Widget>[
                            Container(
                              child: TabBar(
                                indicator: const UnderlineTabIndicator(
                                  borderSide: BorderSide(color: Colors.blue, width: 4.0),
                                ),
                                labelColor: Colors.black,
                                labelStyle: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: Theme.of(context).textTheme.headline4?.fontSize, fontFamily: "Poppins"
                                ),
                                unselectedLabelColor: HexColor.getColor("#BDBDBD"),
                                unselectedLabelStyle: TextStyle(
                                    fontSize: Theme.of(context).textTheme.headline4?.fontSize, fontFamily: "Poppins"
                                ),
                                indicatorColor: Colors.amber,
                                tabs: [
                                  Tab(text: "Tentang"),
                                  Tab(text: "Tools"),
                                  Tab(text: "Materi"),
                                ]
                              ),
                            ),
                            const SizedBox(height: 10,),
                            Container(
                              // height: MediaQuery.of(context).size.height/2,
                              child: AutoScaleTabBarView(
                                  physics: const NeverScrollableScrollPhysics(),
                                children: [
                                  Container(
                                    child: Text(
                                        "UI UX adalah kepanjangan dari User Interface (UI) dan User Experience (UX) yang sangat penting dalam pengembangan produk-produk digital seperti aplikasi dan website.\nUI UX sendiri sebenarnya merupakan dua hal yang berbeda, namun keberadaan keduanya tidak dapat dipisahkan.\n\nJika satu aspek saja ditinggalkan, produk yang dikembangakan tidak akan memperoleh hasil yang maksimal. Jika penasaran tentang apa itu UI UX, perbedaan antara UI dan UX, serta masing-masing fungsinya, Sahabat Aksara berada pada artikel yang tepat.",
                                        style: TextStyle(
                                          fontFamily: "Poppins",
                                          fontSize: Theme.of(context).textTheme.headline5?.fontSize
                                        ),
                                    ),
                                  ),
                                  Container(
                                    child: RichText(
                                      softWrap: true,
                                      textAlign: TextAlign.justify,
                                      text: TextSpan(
                                        style: TextStyle(
                                          fontSize: Theme.of(context).textTheme.headline5?.fontSize,
                                          fontFamily: "Poppins",
                                          color: Colors.black
                                        ),
                                        children: [
                                          TextElement.pointText("Figma", "Menggunakan Figma bisa mempercepat pembuatan desain tampilan. Figma memang terkenal di kalangan desainer karena platform yang berbasis web. Karena berbasis web, Figma bisa dijalankan pada semua sistem OS: MacOS, Windows, dan Linux."),
                                          TextElement.pointText("Figma", "Menggunakan Figma bisa mempercepat pembuatan desain tampilan. Figma memang terkenal di kalangan desainer karena platform yang berbasis web. Karena berbasis web, Figma bisa dijalankan pada semua sistem OS: MacOS, Windows, dan Linux."),
                                        ]
                                      ),
                                    )
                                  ),
                                  SingleChildScrollView(
                                    scrollDirection: Axis.horizontal,
                                    child: Column(
                                      children: [
                                        Container(
                                          width: MediaQuery.of(context).size.width - 40,
                                          height: 140,
                                          decoration: BoxDecoration(
                                              color: Colors.white,
                                              borderRadius: BorderRadius.circular(8),
                                              boxShadow: [
                                                BoxShadow(
                                                  color: Colors.black.withOpacity(0.1),
                                                  offset: const Offset(0, 5.0),
                                                  blurRadius: 5.0,
                                                ),
                                              ]
                                          ),
                                          child: Row(
                                            children: [
                                              Expanded(
                                                flex: 3,
                                                child: Container(
                                                  decoration: const BoxDecoration(
                                                      color: Color(0xff7c94b6),
                                                      image: DecorationImage(
                                                        image: AssetImage("assets/images/recommend-ex.png"),
                                                        fit: BoxFit.cover,
                                                      ),
                                                      borderRadius: BorderRadius.only(
                                                          topLeft: Radius.circular(8),
                                                          bottomLeft: Radius.circular(8)
                                                      )
                                                  ),
                                                ),
                                              ),
                                              Expanded(
                                                flex: 7,
                                                child: Padding(
                                                  padding: EdgeInsets.only(top: 10, left: 20, right: 20),
                                                  child: Column(
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    children: [
                                                      Text("Pengenalan Visual Design",overflow: TextOverflow.ellipsis, softWrap: false, style: TextStyle(fontWeight: FontWeight.bold, fontSize: Theme.of(context).textTheme.headline5?.fontSize),textAlign: TextAlign.left,),
                                                      const SizedBox(height: 10,),
                                                      Text("230 orang telah membaca", overflow: TextOverflow.ellipsis, softWrap: false, style: TextStyle(fontSize: Theme.of(context).textTheme.caption?.fontSize, color: HexColor.getColor("#6F6671")),textAlign: TextAlign.left,),
                                                      const SizedBox(height: 20,),
                                                      GestureDetector(
                                                        onTap: (){
                                                          Navigator.push(context, MaterialPageRoute(builder: (context) => const MateriRekomendasiView(title: "Detail Rekomendasi"))).then((value) => (){
                                                            if(value == true){
                                                              rebuildAllChildren(context);
                                                            }
                                                          });
                                                        },
                                                        child: ButtonElement.buttonOutline(TextStyle(fontWeight: FontWeight.bold, color: HexColor.getColor("#46A3D7"), fontSize: 16), "Mulai Belajar"),
                                                      )
                                                    ],
                                                  ),
                                                )
                                              )
                                            ],
                                          ),
                                        ),
                                        const SizedBox(height: 20,)
                                      ],
                                    ),
                                  ),

                                ]
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20,)
              ],
            ),
          ),
        ),
      ),
    );
  }

}

