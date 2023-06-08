import 'package:flutter/material.dart';

class DialogMenuElement{
  static Future openDialog(BuildContext context, String title, String desc, Widget widget) => showDialog(
      context: context,
      builder: (context) => AlertDialog(
        // insetPadding: const EdgeInsets.all(10),
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(8))
        ),
        backgroundColor: Colors.white,
        title: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                width: double.infinity,
                height: (MediaQuery.of(context).size.height/5),
                child: Image.asset("assets/images/check.png"),
              ),
              Text(title, textAlign: TextAlign.center, style: TextStyle(fontWeight: FontWeight.bold, fontSize: Theme.of(context).textTheme.headline2!.fontSize!+4)),
            ],
          ),
        ),
        content: Text(desc, textAlign: TextAlign.center,style: TextStyle(fontSize: Theme.of(context).textTheme.headline4?.fontSize)),
        actions: [
          GestureDetector(onTap: (){
            Navigator.of(context).pop();
            Navigator.pushReplacement(context,
                MaterialPageRoute(
                    builder: (context) => widget));
          }, child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: Colors.blue,
            ),
            child: Center(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(0,25,0,25),
                child: Text(
                  'Lanjutkan',
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
          const SizedBox(height: 20)
        ],
      )
  );

  static void showToast(BuildContext context, Color color, String title) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        behavior: SnackBarBehavior.floating,
        backgroundColor: color,
        content: Text(title, textAlign: TextAlign.center, style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
        margin: EdgeInsets.only(
            bottom: MediaQuery.of(context).size.height-75,
            right: 20,
            left: 20),
      ),
    );
  }
}