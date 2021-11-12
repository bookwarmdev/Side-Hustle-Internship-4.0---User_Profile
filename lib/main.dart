import 'package:flutter/material.dart';
import 'package:profilepage/ui/core/style.dart';

import 'ui/screen/profile_screen.dart'; 

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Profile',
      theme: ThemeData( 
        primaryColor: bwdPrimaryColor,
      ),
      debugShowCheckedModeBanner: false,
      home: const ProfileScreen(),
    );
  }
}