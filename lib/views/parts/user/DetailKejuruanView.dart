import 'package:autoscale_tabbarview/autoscale_tabbarview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:online_course_pekerja/utils/HexColor.dart';
import 'package:online_course_pekerja/views/elements/ButtonElement.dart';
import 'package:online_course_pekerja/views/elements/CardElement.dart';
import 'package:online_course_pekerja/views/elements/SideBarElement.dart';

import '../../elements/HomeAppBar.dart';
import '../../elements/TextElement.dart';

class DetailKejuruanView extends StatefulWidget{
  const DetailKejuruanView({super.key, required this.title});
  final String title;

  @override
  State<StatefulWidget> createState() => _DetailKejuruanViewState();

}

class _DetailKejuruanViewState extends State<DetailKejuruanView>{
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
                            child: Text("Teknologi Informasi", style: TextStyle(fontSize: Theme.of(context).textTheme.headline2?.fontSize),),
                          ),
                          Expanded(
                            flex: 2,
                            child: RichText(
                                text: TextSpan(
                                    children: [
                                      WidgetSpan(
                                          child: Icon(Icons.star, color: Colors.orange, size: 24)
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
                      const SizedBox(height: 20,),
                      DefaultTabController(
                        length: 2,
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
                                    Tab(text: "Kursus Terkait")
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
                                    SingleChildScrollView(
                                      scrollDirection: Axis.horizontal,
                                      child: Column(
                                        children: [
                                          Column(
                                            children: List.generate(3, (index){
                                              return Column(
                                                children: [
                                                  CardElement.cardKursusUser(context, "Back End Developer", 250, "5.0"),
                                                  const SizedBox(height: 20,)
                                                ],
                                              );
                                            }),
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

