import 'package:flutter/material.dart';
import 'package:online_course_pekerja/views/elements/DialogMenuElement.dart';
import 'package:online_course_pekerja/views/parts/LoginPartView.dart';

class SignUpView extends StatefulWidget{
  const SignUpView({super.key});

  @override
  State<SignUpView> createState() => _SignUpViewState();
}

class _SignUpViewState extends State<SignUpView>{
  String email = "", password = "", confirmPassword = "", namaLengkap = "";


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
                  child: Image.asset("assets/images/signup.png"),
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
                              'Daftar Akun',
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
                                      Text(
                                        'Nama Lengkap',
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
                                          decoration: InputDecoration(
                                            border: InputBorder.none,
                                            contentPadding: EdgeInsets.fromLTRB(10, 25, 10, 25),
                                            hintText: 'Masukkan Nama Lengkap',
                                            hintStyle: TextStyle(color: Colors.grey),
                                          ),
                                          style: TextStyle(color: Colors.black, fontSize: Theme.of(context).textTheme.headline5?.fontSize),
                                          onChanged: (value){
                                            setState(() {
                                              namaLengkap = value;
                                            });
                                          },
                                        ),
                                      ),
                                      const SizedBox(height: 20),
                                      Text(
                                        'Email/ No. Handphone',
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
                                          decoration: InputDecoration(
                                            border: InputBorder.none,
                                            contentPadding: EdgeInsets.fromLTRB(10, 25, 10, 25),
                                            hintText: 'Masukkan Email/ No. Handphone',
                                            hintStyle: TextStyle(color: Colors.grey),
                                          ),
                                          style: TextStyle(color: Colors.black, fontSize: Theme.of(context).textTheme.headline5?.fontSize),
                                          onChanged: (value){
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
                                          style: TextStyle(color: Colors.black, fontSize: Theme.of(context).textTheme.headline5?.fontSize),
                                          onChanged: (value){
                                            setState(() {
                                              password = value;
                                            });
                                          },
                                        ),
                                      ),
                                      const SizedBox(height: 20),
                                      Text(
                                        'Konfirmasi Kata Sandi',
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
                                          style: TextStyle(color: Colors.black, fontSize: Theme.of(context).textTheme.headline5?.fontSize),
                                          onChanged: (value){
                                            setState(() {
                                              confirmPassword = value;
                                            });
                                          },
                                        ),
                                      ),
                                      const SizedBox(height: 35),
                                      GestureDetector(
                                        onTap: () async {
                                          if((email.isNotEmpty && password.isNotEmpty) && password == confirmPassword) {
                                            DialogMenuElement.openDialog(context, "Registrasi Berhasil", "Tekan tombol Lanjutkan untuk kembali ke halaman Login", const LoginView());
                                          } else if(email.isNotEmpty && password.isNotEmpty && confirmPassword.isNotEmpty && namaLengkap.isNotEmpty){
                                            DialogMenuElement.showToast(context, Colors.redAccent, "Email atau password salah, silakan coba lagi!");
                                          }

                                        },
                                        child: Container(
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(8),
                                            color: email.isNotEmpty && password.isNotEmpty? Colors.blue :Colors.grey,
                                            // border: Border.all(color: Colors.black)
                                          ),
                                          child: Center(
                                            child: Padding(
                                              padding: EdgeInsets.fromLTRB(0,25,0,25),
                                              child: Text(
                                                'Daftar',
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