import 'package:flutter/material.dart';
import 'package:somador/components/app_bar.dart';
import 'package:somador/components/form_text_field.dart';
import 'package:somador/components/main_button.dart';
import 'package:somador/components/main_title.dart';
import 'package:somador/controller/user_controller.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          mainTitle(
            text: 'Login',
          ),
          Form(
            key: _formKey, 
          child: Column(
            children: [
              FormTextField(
                labelText: "email", 
                hintText: "email", 
                textController: _emailController,
                inputType: TextInputType.emailAddress,
              ),
              FormTextField(
                labelText: "senha",
                 hintText: "senha",
                textController: _passwordController,
                obscureText: true,
                  ),
              mainButton(
                buttonText: 'Entrar',
                buttonFunction: () async {
                  final navigator = Navigator.of(context);
                  final messenger = ScaffoldMessenger.of(context);
                  bool loginSucesso = await UserController.instance.login(_emailController.text, _passwordController.text);

                  if (loginSucesso) {
                    navigator.pushNamed('/calcular');
                  } else {
                      messenger.showSnackBar(SnackBar(content: Text("Falha na autenticação"),));

                  }

                },
                )
            ],
          ),
          ),
        ],
      ),
      
    );
  }
}