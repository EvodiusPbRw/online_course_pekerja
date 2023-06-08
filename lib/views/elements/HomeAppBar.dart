import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeAppBar {
  static PreferredSize appBar(String title, BuildContext context, String condition, {scaffoldKey, home}) => PreferredSize(
      preferredSize: const Size.fromHeight(100),
      child: Padding(
        padding: const EdgeInsets.only(left: 0, right: 0,top: 0),
        child: Container(
          decoration: condition == "home"? null : BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.1),
                  offset: const Offset(0, 5.0),
                  blurRadius: 5.0,
                )
              ]
          ),
          child: AppBar(
            toolbarHeight: 100.0,
            automaticallyImplyLeading: false,
            surfaceTintColor: Colors.transparent,
            backgroundColor: Colors.white,
            leading: condition == "home" ? null : IconButton(
              icon: const Icon(Icons.arrow_back_ios),
              onPressed: () => Navigator.of(context).pop(true),
            ),
            actions: [
              const SizedBox(width: 20),
              Expanded(
                  flex: 1,
                  child: GestureDetector(
                    onTap: (){
                      condition == "home"? null : Navigator.pop(context, true);
                    },
                    child: condition == "home"? CircleAvatar(
                      child: ClipOval(
                        child: Image.asset(
                          home == "user"? 'assets/images/arleccino.jpg' : 'assets/icons/profile-icon.png',
                          fit: BoxFit.cover,
                          width: 90,
                          height: 90,
                        ),
                      ),
                    ) : null,
                  ),
              ),
              Expanded(
                  flex: 7,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Text(
                      title,
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          fontSize: Theme.of(context).textTheme.headline4?.fontSize
                      ),
                    ),
                  )
              ),
              Expanded(
                  flex: 1,
                  child: condition == "home"? IconButton(
                    onPressed: (){
                      condition == "home"? scaffoldKey.currentState.openDrawer() : null;
                    },
                    alignment: Alignment.center,
                    icon: const Icon(Icons.menu),
                  ) : Container()
              ),
              const SizedBox(width: 20),
            ],
          ),
        )
      )
  );
}