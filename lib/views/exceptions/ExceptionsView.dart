import 'package:flutter/material.dart';

class ExceptionsView{
  static Widget notFound(BuildContext context){
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
            child: Image.asset("assets/images/no_data_found.png")
        ),
        const SizedBox(height: 10,),
        Text("Whoops!, Data gak ketemu nih", style: TextStyle(fontSize: Theme.of(context).textTheme.headline6!.fontSize, fontWeight: FontWeight.bold),),
        const SizedBox(height: 10,),
        Text("Silakan coba lagi kata pencarian yang lain.", textAlign: TextAlign.center, style: TextStyle(fontSize: Theme.of(context).textTheme.caption!.fontSize),),
      ],
    );
  }
}