import 'package:comunic_app/src/auth/view/page/login_page.dart';
import 'package:comunic_app/src/auth/view/page/novaSenha_page.dart';
import 'package:comunic_app/src/auth/view/page/register_page.dart';
import 'package:comunic_app/src/auth/viewmodel/login_viewmodel.dart';
import 'package:comunic_app/src/auth/viewmodel/novaSenha_viewmodel.dart';
import 'package:comunic_app/src/auth/viewmodel/register_viewmodel.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AuthModule extends Module{
  @override
  List<Bind<Object>> get binds =>[

    Bind.factory((i) => LoginViewModel()),
    Bind.factory((i) => RegisterViewModel()),
    Bind.factory((i) => novaSenhaViewModel()),
       
  ];

  @override
  List<ModularRoute>  get routes => [

    ChildRoute('/', child: (_,__) => const LoginPage(), children: []), 
    ChildRoute('/registro', child: (_,__) => const RegisterPage(), children: []),
    ChildRoute('/novaSenha', child: (_,__) => const novaSenhaPage(), children: []), 
  ];
}