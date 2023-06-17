import 'package:flutter/material.dart';
import 'package:somador/components/app_bar.dart';
import 'package:somador/components/main_title.dart';

class CalcPage extends StatefulWidget {
  const CalcPage({super.key});

  @override
  State<CalcPage> createState() => _CalcPageState();
}

class _CalcPageState extends State<CalcPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [mainTitle(text: 'Olá')],
      ),
    );
  }
}
