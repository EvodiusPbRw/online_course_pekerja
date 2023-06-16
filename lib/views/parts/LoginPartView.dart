import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:online_course_pekerja/model/AccountModel.dart';
import 'package:online_course_pekerja/views/elements/ButtonElement.dart';
import 'package:online_course_pekerja/views/parts/admin/HomePartAdminView.dart';
import 'package:online_course_pekerja/views/parts/user/SignUpPartView.dart';

import '../elements/DialogMenuElement.dart';
import 'user/HomePartView.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  // Gak make database jadinya variable constant
  // Variable map itu punya key dan value
  Map<String, AccountModel> account =
    {"user@user.id": AccountModel("user@user.id", "user123", "user", "Victor"), "admin@admin.id" : AccountModel("admin@admin.id", "admin123", "admin", "Admin")};

  //Ini variable yang nanti nyimpen data textfield
  String email = "", password = "";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        resizeToAvoidBottomInset: false,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: (MediaQuery.of(context).size.height/2.5),
                child: Image.asset("assets/images/login.png"),
              ),
              Container(
                transform: Matrix4.translationValues(0, -(MediaQuery.of(context).size.height/2)*(1/12), 0),
                child: Column(
                  children: [
                    Padding(
                        padding: const EdgeInsets.all(20),
                        child: Container(
                          // transform: Matrix4.translationValues(0,-20, 0),
                          child: Text(
                            'Masuk',
                            style: TextStyle(
                                fontSize: Theme.of(context).textTheme.headline1?.fontSize,
                                fontFamily: "Poppins",
                                fontWeight: FontWeight.bold
                            ),
                          ),
                        )
                    ),
                    Container(
                        child: Container(
                          width: double.infinity,
                          decoration: const BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(30),
                                topRight: Radius.circular(30),
                              )
                          ),
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
                            child: SingleChildScrollView(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Expanded(
                                          flex: 5,
                                          child: Text(
                                            'Email/ No.Handphone',
                                            style: TextStyle(
                                              fontFamily: 'Poppins',
                                              color: Colors.black,
                                              fontSize: Theme.of(context).textTheme.headline4?.fontSize,
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          flex:5,
                                          child: Container()
                                        )
                                      ],
                                    ),
                                    const SizedBox(height: 10),
                                    Container(
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(8),
                                          color: Colors.white,
                                          border: Border.all(color: Colors.black)
                                      ),
                                      child: TextField(
                                        decoration: InputDecoration(
                                          border: InputBorder.none,
                                          contentPadding: EdgeInsets.fromLTRB(10, 25, 10, 25),
                                          hintText: 'Masukkan email/ No.Handphone',
                                          hintStyle: TextStyle(color: Colors.grey),
                                        ),
                                        style: TextStyle(color: Colors.black, fontSize: Theme.of(context).textTheme.headline4?.fontSize),
                                        onChanged: (value){
                                          //otomatis manggil setstate ketika value berubah
                                          setState(() {
                                            email = value;
                                          });
                                        },
                                      ),
                                    ),
                                    const SizedBox(height: 20),
                                    Text(
                                      'Kata Sandi',
                                      style: TextStyle(
                                        fontFamily: 'Poppins',
                                        color: Colors.black,
                                        fontSize: Theme.of(context).textTheme.headline4?.fontSize,
                                      ),
                                    ),
                                    const SizedBox(height: 10),
                                    Container(
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(8),
                                          color: Colors.white,
                                          border: Border.all(color: Colors.black)
                                      ),
                                      child: TextField(
                                        obscureText: true,
                                        decoration: InputDecoration(
                                          border: InputBorder.none,
                                          contentPadding: EdgeInsets.fromLTRB(10, 25, 10, 25),
                                          hintText: 'Masukkan Kata Sandi',
                                          hintStyle: TextStyle(color: Colors.grey),
                                        ),
                                        style: TextStyle(color: Colors.black, fontSize: Theme.of(context).textTheme.headline4?.fontSize),
                                        onChanged: (value){
                                          setState(() {
                                            password = value;
                                          });
                                        },
                                      ),
                                    ),
                                    const SizedBox(height: 35),
                                    GestureDetector(
                                      onTap: () {
                                        if((email.isNotEmpty && password.isNotEmpty) && (account.containsKey(email) && account[email]!.password == password)) {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) => account[email]!.role == "admin"?
                                                    HomePartAdminView(title: 'Halo, ${account[email]!.username}')
                                                      :
                                                    HomePartView(title: 'Halo, ${account[email]!.username}')
                                              )
                                          );
                                        } else if(email.isNotEmpty && password.isNotEmpty){
                                          DialogMenuElement.showToast(context, Colors.redAccent, "Email atau password salah, silakan coba lagi!");
                                        }
                                      },
                                      child: Container(
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(8),
                                          color: email.isNotEmpty && password.isNotEmpty?Colors.blue:Colors.grey,
                                          // border: Border.all(color: Colors.black)
                                        ),
                                        child: Center(
                                          child: Padding(
                                            padding: const EdgeInsets.fromLTRB(0,25,0,25),
                                            child: Text(
                                              'Masuk',
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: Theme.of(context).textTheme.button?.fontSize,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    const SizedBox(height: 10),
                                    GestureDetector(
                                      onTap: () {
                                        Navigator.push(context,
                                            MaterialPageRoute(
                                                builder: (context) => const SignUpView()));
                                      },
                                      child: Container(
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(8),
                                          color: Colors.white,
                                          // border: Border.all(color: Colors.black)
                                        ),
                                        child: Center(
                                          child: Padding(
                                            padding: const EdgeInsets.fromLTRB(0,25,0,25),
                                            child: Text(
                                              'Daftar Akun',
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontSize: Theme.of(context).textTheme.headline4?.fontSize,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                )
                            ),
                          ),
                        )
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      )
    );
  }
}