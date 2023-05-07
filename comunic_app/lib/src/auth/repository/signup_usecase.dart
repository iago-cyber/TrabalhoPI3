
/*import 'package:comunic_app/src/auth/repository/model/user_signup.dart';
import 'package:comunic_app/src/auth/repository/signup_repository.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:localization/localization.dart';

import 'model/user.dart';

class SignUpUseCase {
  final repository = Modular.get<SignUpRepository>();

  String? validateEmail(String email){
    String souce =
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    RegExp regExp = RegExp(souce);
    if(regExp.hasMatch(email)){
      return "Email invalido"; 
    }
    return null;
  }

  String? validateUsername(String username) {
    if (username.isEmpty) {
      return 'username_required'.i18n();
    }

    return null;
  }

  String? validatePassword(String password) {
    if (password.isEmpty) {
      return 'login_password_required'.i18n();
    }
    return null;
  }

  Future<User> SignUp(String username,String email, String password) {
    return repository.signUp(UserSignUp(username,email, password));
  }
}*/