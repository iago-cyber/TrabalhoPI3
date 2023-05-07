import 'package:comunic_app/app_widget.dart';
import 'package:comunic_app/src/auth/view/page/login_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'app_module.dart';

void main() {
  runApp(ModularApp(module: AppModule(), child: const AppWidget()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Em construcao',
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );
  }
}
