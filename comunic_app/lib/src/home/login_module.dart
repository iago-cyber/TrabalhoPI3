import 'package:comunic_app/src/home/view/page/login_page.dart';
import 'package:comunic_app/src/home/viewmodel/login_viewmodel.dart';
import 'package:flutter_modular/flutter_modular.dart';

class LoginModule extends Module {
  @override
  List<Bind<Object>> get binds => [
    Bind.factory((i) => LoginViewModel()),
  ];

  @override
  List<ModularRoute> get routes => [
    ChildRoute('/', child: (_, __) => const LoginPage()),
  ];
 }