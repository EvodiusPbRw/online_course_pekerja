import 'package:flutter/material.dart';

import '../../utils/HexColor.dart';

class BannerElement {
  static Widget banner(){
    return Container(
      height: 225,
      width: 325,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: HexColor.getColor("#EFFAFC")
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
              flex: 5,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                        "Belajar Desain Grafis 2022",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: HexColor.getColor("#4291B0"),
                            fontWeight: FontWeight.bold,
                            fontSize: 16
                        )
                    ),
                    const SizedBox(height: 10),
                    GestureDetector(
                      onTap: () {
                        // Navigator.push(context,
                        //     MaterialPageRoute(
                        //         builder: (context) => const SignUpView()));
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(color: HexColor.getColor("#1E85A7")),
                        ),
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(0,10,0,10),
                            child: Text(
                              'Lihat Materi',
                              style: TextStyle(
                                color: HexColor.getColor("#1E85A7"),
                                fontSize: 16,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              )
          ),
          Expanded(
              flex: 5,
              child: Image.asset("assets/images/login.png")
          )
        ],
      ),
    );
  }
}