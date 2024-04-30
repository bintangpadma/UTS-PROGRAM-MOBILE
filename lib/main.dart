import 'package:flutter/material.dart';
import 'package:uts_pmo_app/detailpage.dart';
import 'package:uts_pmo_app/homepage.dart';
import 'package:uts_pmo_app/login.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: login(),
    );
  }
} 