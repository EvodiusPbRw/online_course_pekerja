import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../elements/CardElement.dart';
import '../../elements/HomeAppBar.dart';

class ListRekomendasiAdminView extends StatefulWidget{
  const ListRekomendasiAdminView({super.key, required this.title});
  final String title;

  @override
  State<StatefulWidget> createState() => _ListRekomendasiAdminViewState();
}

class _ListRekomendasiAdminViewState extends State<ListRekomendasiAdminView>{
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
                  ],
                )
            ),
          )
        )
    );
  }
}