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
  final _formKey = GlobalKey<FormState>();
  TextEditingController numberOneController = TextEditingController();
  TextEditingController numberTwoController = TextEditingController();

  double _soma = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          mainTitle(
            text: 'Olá, ${User.instance.getEmail()}',
          ),
          const SizedBox(
            height: 50,
          ),
          mainTitle(
            text: 'Entre com os valores',
          ),
          Form(
            key: _formKey,
            child: Column(
              children: [
                FormTextField(
                  labelText: 'Número 1',
                  hintText: 'Número 1',
                  textController: numberOneController,
                  inputType: TextInputType.text,
                  inputValidator: (number) {
                    if (number == null || number.isEmpty) {
                      return 'O primeiro número precisa ser preenchido!';
                    }

                    if (double.tryParse(number) is! double) {
                      return 'O primeiro número precisa ser do tipo número!';
                    }

                    return null;
                  },
                ),
                FormTextField(
                  labelText: 'Número 2',
                  hintText: 'Número 2',
                  textController: numberTwoController,
                  inputType: TextInputType.text,
                  inputValidator: (number) {
                    if (number == null || number.isEmpty) {
                      return 'O segundo número precisa ser preenchido!';
                    }

                    if (double.tryParse(number) is! double) {
                      return 'O segundo número precisa ser do tipo número!';
                    }

                    return null;
                  },
                ),
                mainButton(
                  buttonText: 'Calcular',
                  buttonFunction: () {
                    if (_formKey.currentState!.validate()) {
                      Soma.instance
                          .setNumero1(double.parse(numberOneController.text));
                      Soma.instance
                          .setNumero2(double.parse(numberTwoController.text));

                      setState(() {
                        _soma = SomaController.instance.soma();
                      });
                    }
                  },
                ),
              ],
            ),
          ),
          Row(
            children: [
              Text(
                'Resultado: ${_soma.toStringAsFixed(2)}',
                style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
            ],
          )
        ],
      ),
    );
  }
}
