import 'package:flutter/material.dart';
import 'package:somador/components/app_bar.dart';
import 'package:somador/components/form_text_field.dart';
import 'package:somador/components/main_button.dart';
import 'package:somador/components/main_title.dart';
import 'package:somador/controller/soma_controller.dart';
import 'package:somador/model/soma.dart';
import 'package:somador/model/user.dart';

class CalcPage extends StatefulWidget {
  const CalcPage({super.key});

  @override
  State<CalcPage> createState() => _CalcPageState();
}

class _CalcPageState extends State<CalcPage> {
  TextEditingController numberOneController = TextEditingController();
  TextEditingController numberTwoController = TextEditingController();

  // String _email = User.instance.getEmail();
  double _soma = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: appBar(),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            mainTitle(text: 'Olá, [_email]!'),
            const SizedBox(
              height: 50,
            ),
            mainTitle(text: "Entre com os valores"),
            FormTextField(
              labelText: "Número 1",
              inputType: TextInputType.number,
              hintText: "Número 1",
              textController: numberOneController,
            ),
            FormTextField(
              labelText: "Número 2",
              hintText: "Número 2",
              inputType: TextInputType.number,
              textController: numberTwoController,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                mainButton(
                  buttonFunction: () {
                    setState(() {
                      Soma.instance
                          .setNumero1(double.parse(numberOneController.text));
                      Soma.instance
                          .setNumero2(double.parse(numberTwoController.text));
                      _soma = SomaController.instance.soma();
                    });
                  },
                  buttonText: "Calcular",
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Resultado: ${_soma.toStringAsFixed(2)}",
                  style: TextStyle(fontSize: 18),
                ),
              ],
            ),
          ],
        ));
  }
}
