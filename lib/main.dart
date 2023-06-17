import 'package:flutter/material.dart';
import 'package:somador/view/Home_Page.dart';
import 'package:somador/view/calc_page.dart';

void main(List<String> args) {
  runApp(const Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Somador',
      initialRoute: '/',
      routes: { 
        '/' : (context) => HomePage(),
        '/calcular':(context) => CalcPage(),
        }

    );
  }
}