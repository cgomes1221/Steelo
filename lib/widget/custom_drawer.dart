import 'package:flutter/material.dart';
import 'package:steelo/page/login_screen2.dart';

import 'package:steelo/page/mainuser_prof.dart';
import 'package:steelo/page/nav.dart';

class CustomDrawer extends StatelessWidget {
  _buildDrawerOption(Icon icon, String title, Function onTap) {
    return ListTile(
      leading: icon,
      title: Text(
        title,
        style: TextStyle(
          fontSize: 20.0,
        ),
      ),
      onTap: onTap,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          Stack(
            children: <Widget>[
              // Image(
              //   height: 200.0,
              //   width: double.infinity,
              //   image: AssetImage(
              //     currentUser.backgroundImageUrl,
              //   ),
              //   fit: BoxFit.cover,
              // ),
              Positioned(
                bottom: 20.0,
                left: 20.0,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    // Container(
                    //   height: 100.0,
                    //   width: 100.0,
                    //   decoration: BoxDecoration(
                    //     shape: BoxShape.circle,
                    //     border: Border.all(
                    //       width: 2.0,
                    //       color: Colors.black,
                    //     ),
                    //   ),
                    // child: ClipOval(
                    //   child: Image(
                    //     image: AssetImage(
                    //       currentUser.profileImageUrl,
                    //     ),
                    //     fit: BoxFit.cover,
                    //   ),
                    // ),
                    //),
                    // SizedBox(width: 6.0),
                    // Text(
                    //   currentUser.name,
                    //   style: TextStyle(
                    //     color: Colors.white,
                    //     fontSize: 25.0,
                    //     fontWeight: FontWeight.bold,
                    //     letterSpacing: 1.0,
                    //   ),
                    // ),
                  ],
                ),
              ),
            ],
          ),
          // _buildDrawerOption(
          //   Icon(Icons.home),
          //   'Home',
          //   () => Navigator.pushReplacement(
          //     context,
          //     MaterialPageRoute(
          //       builder: (_) => Nav(),
          //     ),
          //   ),
          // ),
          // _buildDrawerOption(
          //   Icon(Icons.account_circle),
          //   'Your Profile',
          //   () => Navigator.pushReplacement(
          //     context,
          //     MaterialPageRoute(
          //       builder: (_) => UserProf(
          //         //user: currentUser,
          //         url: '',
          //       ),
          //     ),
          //   ),
          // ),
          _buildDrawerOption(Icon(Icons.settings), 'Settings', () {}),
          Expanded(
            child: Align(
              alignment: FractionalOffset.bottomCenter,
              child: _buildDrawerOption(
                Icon(Icons.directions_run),
                'Logout',
                () => Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (_) => LoginScreen2(),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
