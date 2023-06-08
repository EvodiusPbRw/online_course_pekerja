import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../elements/CardElement.dart';
import '../../elements/HomeAppBar.dart';

class LihatSemuaKejuruanView extends StatefulWidget{
  const LihatSemuaKejuruanView({super.key, required this.title});
  final String title;

  @override
  State<StatefulWidget> createState() => _LihatSemuaKejuruanViewState ();
}

class _LihatSemuaKejuruanViewState extends State<LihatSemuaKejuruanView>{
  @override
  Widget build(BuildContext context){
    return SafeArea(
        child: Scaffold(
            backgroundColor: Colors.white,
            resizeToAvoidBottomInset: false,
            appBar: HomeAppBar.appBar(super.widget.title, context, "lihat semua"),
            body: Padding(
              padding: const EdgeInsets.only(left: 20, right:20),
              child: SingleChildScrollView(
                  child: Column(
                    children: [
                      const SizedBox(height: 30,),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
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
                      ),
                    ],
                  )
              ),
            )
        )
    );
  }
}