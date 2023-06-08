import 'package:flutter/material.dart';
import 'package:online_course_pekerja/views/parts/LoginPartView.dart';

class SideBarElement{
  static Widget sideBar(BuildContext context){
    return Drawer(
      child: ListView(
        children: [
          UserAccountsDrawerHeader(
            accountName: Text('Victor Anindia'),
            accountEmail: Text('victor.anindia@ti.ukdw.ac.id'),
            currentAccountPicture: CircleAvatar(
              child: ClipOval(
                child: Image.asset(
                  'assets/images/arleccino.jpg',
                  fit: BoxFit.cover,
                  width: 90,
                  height: 90,
                ),
              ),
            ),
            decoration: BoxDecoration(
              color: Colors.blue,
              image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage('assets/images/bg-ex.png')
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text('Home'),
            onTap: () => null,
          ),
          const Divider(),
          ListTile(
            title: Text('Exit'),
            leading: Icon(Icons.exit_to_app),
            onTap: () => Navigator.pushReplacement(context, MaterialPageRoute(
                builder: (context) => const LoginView())),
          ),
        ],
      ),

    );
  }
}