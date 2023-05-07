import 'package:comunic_app/src/auth/viewmodel/login_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:localization/localization.dart';

class novaSenhaPage extends StatefulWidget {
  const novaSenhaPage({Key? key}) : super(key: key);

  @override
  State<novaSenhaPage> createState() => _novaSenhaState();
}

class _novaSenhaState extends State<novaSenhaPage> {
  bool obscureText = true;
  final _pinController = TextEditingController();
  final _passwordController = TextEditingController();
  final _passwordConfirmationController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

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
                      height: -11,
                      fontSize: 15,
                      color: Color.fromRGBO(70, 70, 60, 1),
                    ),
                  ),
                ),
                Center(
                  child: Text(
                    'codigo'.i18n(),
                    style: const TextStyle(
                      height: -5,
                      fontSize: 15,
                      color: Colors.black,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    controller: _pinController,
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      filled: true,
                      fillColor: Color.fromRGBO(175, 175, 153, 1),
                      hintText: 'Pin',
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
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    controller: _passwordConfirmationController,
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      filled: true,
                      fillColor: Color.fromRGBO(175, 175, 153, 1),
                      hintText: 'confirmar senha',
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
                  child: Text(
                    'Confirmar',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
                ElevatedButton(
                  onPressed: () async => {Navigator.pushNamed(context, '/')},
                  style: const ButtonStyle(
                    shadowColor: MaterialStatePropertyAll(Colors.transparent),
                    backgroundColor: MaterialStatePropertyAll(
                      Colors.transparent,
                    ),
                  ),
                  child: const Text(
                    'Entrar',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
