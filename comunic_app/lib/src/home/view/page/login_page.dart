import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:localization/localization.dart';

import '../../viewmodel/login_viewmodel.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool obscureText = true;
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  final _viewModel = Modular.get<LoginViewModel>();

  Widget build(BuildContext context) {
  return Scaffold(
    backgroundColor: const Color.fromARGB(255, 245, 239, 222),
    body: Center(
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
               Center(
                child: Text(
                  'idioma'.i18n(),
                  style: const TextStyle(
                    height: -15,
                    fontSize: 15,
                    color: Color.fromRGBO(70, 70, 60, 1),
                  ),
                ),
              ),
               Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: _emailController,
                  decoration: const InputDecoration(
                    border: InputBorder.none,
                    filled: true,
                    fillColor: Color.fromRGBO(175, 175, 153, 1),
                    hintText: 'email',
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: _passwordController,
                  decoration: const InputDecoration(
                    border: InputBorder.none,
                    filled: true,
                    fillColor: Color.fromRGBO(175, 175, 153, 1),
                    hintText: 'senha',
                  ),
                ),
              ),
              const SizedBox(height: 20),
              const ElevatedButton(
                onPressed: null,
                style: ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(
                    Color.fromRGBO(70, 70, 60, 1),
                  ),
                ),
                child: Text('Entrar'),
              ),
              const ElevatedButton(
                onPressed: null,
                style: ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(
                    Colors.transparent,
                  ),
                ),
                child: Text('Recuperar Senha',style: TextStyle(color: Colors.black),),
              ),
               ElevatedButton(
                onPressed: () async => {Navigator.pushNamed(context, 'registro')},
                style: const ButtonStyle(shadowColor: MaterialStatePropertyAll(Colors.transparent),
                  backgroundColor: MaterialStatePropertyAll(
                    Colors.transparent,
                  ),
                ),
                child: const Text('Registre-se',style: TextStyle(color: Colors.black),),
              ),
            ],
          ),
        ),
      ),
    ),
  );
}
}