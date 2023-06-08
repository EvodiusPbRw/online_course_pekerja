import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:online_course_pekerja/views/parts/user/DetailKejuruanView.dart';

import '../../utils/HexColor.dart';
import '../parts/user/DetailRekomendasiView.dart';
import 'ButtonElement.dart';

class CardElement {
  static Widget cardRekomendasi(BuildContext context){
    return Container(
      width: 160,
      height: 250,
      decoration: BoxDecoration(
          border: Border.all(color: HexColor.getColor("#D9DBDC")),
          borderRadius: BorderRadius.circular(8)
      ),
      child: Column(
        children: [
          Expanded(
              flex:4,
              child: Stack(
                children: [
                  Container(
                    decoration: const BoxDecoration(
                        color: Color(0xff7c94b6),
                        image: DecorationImage(
                          image: AssetImage("assets/images/recommend-ex.png"),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(8),
                            topRight: Radius.circular(8)
                        )
                    ),
                  ),
                  Stack(
                    children: [
                      Positioned(
                          top: 5.0,
                          right: 5.0,
                          child: Icon(
                            Icons.circle,
                            size: 36,
                            color: Colors.black.withOpacity(0.7),
                          )
                      ),
                      Positioned(
                          top: 15.0,
                          right: 15.0,
                          child: Icon(
                            Icons.heart_broken,
                            size: 16,
                            color: Colors.white.withOpacity(0.7),
                          )
                      )
                    ],
                  )
                ],
              )
          ),
          Expanded(
              flex: 6,
              child: Padding(
                padding: EdgeInsets.all(10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Graphic Designer",textAlign: TextAlign.left,softWrap: false, overflow: TextOverflow.ellipsis, style: TextStyle(fontSize: Theme.of(context).textTheme.headline5?.fontSize),),
                    const SizedBox(height: 5),
                    Text("Desain grafis pelajar", softWrap: false, overflow: TextOverflow.ellipsis, style: TextStyle(fontSize: Theme.of(context).textTheme.headline5?.fontSize, fontWeight: FontWeight.bold),),
                    const SizedBox(height: 5),
                    RichText(
                        text: const TextSpan(
                            children: [
                              WidgetSpan(
                                  child: Icon(Icons.star, color: Colors.orange, size: 16)
                              ),
                              TextSpan(
                                  text: " "
                              ),
                              WidgetSpan(
                                  child: Text("5.0", style: TextStyle(color: Colors.black38),)
                              )
                            ]
                        )
                    ),
                    const SizedBox(height: 10),
                    GestureDetector(onTap: (){
                      Navigator.push(context,
                          MaterialPageRoute(
                              builder: (context) => const DetailRekomendasiView(title: "Detail Rekomendasi")));
                    }, child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        color: Colors.blue,
                      ),
                      child: Center(
                        child: Padding(
                          padding: EdgeInsets.fromLTRB(0,10,0,10),
                          child: Text(
                            'Lihat Detail',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: Theme.of(context).textTheme.headline6?.fontSize,
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
          )
        ],
      ),
    );
  }

  static Widget cardKejuruan(BuildContext context){
    return Container(
      width: 160,
      height: 225,
      decoration: BoxDecoration(
          border: Border.all(color: HexColor.getColor("#D9DBDC")),
          borderRadius: BorderRadius.circular(8)
      ),
      child: Column(
        children: [
          Expanded(
              flex:5,
              child: Stack(
                children: [
                  Container(
                    decoration: const BoxDecoration(
                        color: Color(0xff7c94b6),
                        image: DecorationImage(
                          image: AssetImage("assets/images/recommend-ex.png"),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(8),
                            topRight: Radius.circular(8)
                        )
                    ),
                  ),
                ],
              )
          ),
          Expanded(
              flex: 5,
              child: Padding(
                padding: EdgeInsets.all(10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Teknologi Informasi",textAlign: TextAlign.left,softWrap: false, overflow: TextOverflow.ellipsis, style: TextStyle(fontSize: Theme.of(context).textTheme.headline6?.fontSize),),
                    const SizedBox(height: 20),
                    GestureDetector(onTap: (){
                        Navigator.push(context,
                            MaterialPageRoute(
                                builder: (context) => const DetailKejuruanView(title: "Detail Kejuruan")));
                      }, child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          color: Colors.blue,
                        ),
                        child: Center(
                          child: Padding(
                            padding: EdgeInsets.fromLTRB(0,10,0,10),
                            child: Text(
                              'Lihat Detail',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: Theme.of(context).textTheme.headline6?.fontSize,
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
          )
        ],
      ),
    );
  }

  static Widget cardKategori(BuildContext context, String title, String bgColor, IconData icon){
    return Padding(
      padding: const EdgeInsets.only(left:5, right: 5) ,
      child: Container(
        height: 175,
        width: 105,
        child: Column(
          children: [
            Container(
              width: 105,
              height: 105,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(90),
                  color: HexColor.getColor(bgColor)
              ),
              child: Center(
                child: FaIcon(icon, size: Theme.of(context).textTheme.headline1!.fontSize!),
              ),
            ),
            const SizedBox(height: 10,),
            Text(title, textAlign: TextAlign.center,style: TextStyle(fontSize: Theme.of(context).textTheme.headline6!.fontSize),)
          ],
        ),
      )
    );
  }

  static Widget cardLembagaPelatihan(BuildContext context, String title){
    return Column(
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          height: 64,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: HexColor.getColor("#EEEEEE")
          ),
          child: Padding(
              padding: const EdgeInsets.all(20),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  title,
                  style: TextStyle(
                      fontSize: Theme.of(context).textTheme.headline5!.fontSize
                  ),
                ),
              )
          ),
        ),
        const SizedBox(height: 20,)
      ],
    );
  }

  static Widget cardCourseOwned(BuildContext context, String title, String desc, double percent){
    return Container(
      decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              offset: const Offset(0, 5.0),
              blurRadius: 5.0,
            )
          ]
      ),
      child: Container(
          height: 218,
          width: 386,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8)
          ),
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Expanded(
                      flex: 8,
                      child: Text(
                        title,
                        overflow: TextOverflow.ellipsis,
                        softWrap: false,
                        style: TextStyle(
                          fontSize: Theme.of(context).textTheme.headline4?.fontSize),
                      ),
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
                const SizedBox(height: 10,),
                Text(
                  desc,
                  textAlign: TextAlign.start,
                  overflow: TextOverflow.ellipsis,
                  softWrap: false,
                  style: TextStyle(
                      fontSize: Theme.of(context).textTheme.headline5!.fontSize,
                      color: HexColor.getColor("#6F6671"),
                      fontWeight: FontWeight.normal
                  ),
                ),
                const SizedBox(height: 40,),
                LayoutBuilder(builder: (ctx, constraints) {
                  return Stack(
                    children: [
                      Container(
                        width: double.infinity,
                        height: 2,
                        decoration: BoxDecoration(
                          color: HexColor.getColor("#BDBDBD"),
                        ),
                      ),
                      Container(
                        width: constraints.maxWidth * (percent/100),
                        height: 2,
                        decoration: BoxDecoration(
                          color: HexColor.getColor("#00D085"),
                        ),
                      ),
                    ],
                  );
                }),
                const SizedBox(height: 20,),
                ButtonElement.buttonInline(TextStyle(fontSize: Theme.of(context).textTheme.headline4!.fontSize, fontWeight: FontWeight.bold, color: Colors.white), "Lanjutkan kelas")

              ],
            ),
          )
      ),
    );
  }

  static Widget cardKursusUser(BuildContext context, String title, int cnt, String starDesc){
    return Container(
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
              flex: 10,
              child: Padding(
                padding: const EdgeInsets.only(top: 10, left: 20, right: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Expanded(
                          flex:8,
                          child: Text(
                            title,
                            overflow: TextOverflow.ellipsis,
                            softWrap: false,
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: Theme.of(context).textTheme.headline5?.fontSize
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ),
                        Expanded(
                          flex:2,
                          child: RichText(
                              textAlign: TextAlign.right,
                              text: TextSpan(
                                  children: [
                                    WidgetSpan(
                                        child: Icon(Icons.star, color: Colors.orange, size: 14)
                                    ),
                                    TextSpan(
                                      text: " ",
                                    ),
                                    TextSpan(
                                        text: starDesc,
                                        style: TextStyle(color: Colors.black38, fontSize: Theme.of(context).textTheme.headline5?.fontSize)
                                    )
                                  ]
                              )
                          ),
                        )
                      ],
                    ),
                    const SizedBox(height: 10,),
                    Text("$cnt orang telah membaca", overflow: TextOverflow.ellipsis, softWrap: false, style: TextStyle(fontSize: Theme.of(context).textTheme.caption?.fontSize, color: HexColor.getColor("#6F6671")),textAlign: TextAlign.left,),
                    const SizedBox(height: 20,),
                    GestureDetector(
                      onTap: (){
                        // Navigator.push(context, MaterialPageRoute(builder: (context) => const MateriRekomendasiView(title: "Detail Rekomendasi"))).then((value) => (){
                        //   if(value == true){
                        //     rebuildAllChildren(context);
                        //   }
                        // });
                      },
                      child: ButtonElement.buttonInline(TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: Theme.of(context).textTheme.headline5?.fontSize), "Mulai Belajar"),
                    )
                  ],
                ),
              )
          )
        ],
      ),
    );
  }

  static Widget cardKursusAdmin(BuildContext context, String title, String desc, String starDesc){
    return Container(
      width: MediaQuery.of(context).size.width - 40,
      height: 105,
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
              flex: 10,
              child: Padding(
                padding: const EdgeInsets.only(top: 10, left: 20, right: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Expanded(
                          flex:8,
                          child: Text(
                            title,
                            overflow: TextOverflow.ellipsis,
                            softWrap: false,
                            style: TextStyle(
                                fontSize: Theme.of(context).textTheme.headline5?.fontSize
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ),
                        Expanded(
                          flex:2,
                          child: RichText(
                              textAlign: TextAlign.right,
                              text: TextSpan(
                                  children: [
                                    WidgetSpan(
                                        child: Icon(Icons.star, color: Colors.orange, size: 14)
                                    ),
                                    TextSpan(
                                      text: " ",
                                    ),
                                    TextSpan(
                                        text: starDesc,
                                        style: TextStyle(
                                            color: Colors.black38,
                                            fontSize: Theme.of(context).textTheme.headline5?.fontSize,
                                        )
                                    )
                                  ]
                              )
                          ),
                        )
                      ],
                    ),
                    const SizedBox(height: 10,),
                    Text(
                      desc,
                      overflow: TextOverflow.ellipsis,
                      softWrap: false,
                      style: TextStyle(
                          fontSize: Theme.of(context).textTheme.headline6?.fontSize,
                          color: HexColor.getColor("#6F6671")),
                      textAlign: TextAlign.left,
                    ),
                    const SizedBox(height: 20,),
                  ],
                ),
              )
          )
        ],
      ),
    );
  }
}