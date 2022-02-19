import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:steelo/page/login_screen2.dart';
import 'package:steelo/page/swipe.dart';

import 'package:steelo/provider/feedback_position_provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) => ChangeNotifierProvider(
        create: (context) => FeedbackPositionProvider(),
        child: MaterialApp(
          title: 'Steelo',
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            primaryColor: Colors.white,
            bottomNavigationBarTheme: const BottomNavigationBarThemeData(
                selectedItemColor: Colors.black),
            visualDensity: VisualDensity.adaptivePlatformDensity,
          ),
          home: LoginScreen2(),
        ),
      );
}
