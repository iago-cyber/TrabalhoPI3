
/*import 'package:comunic_app/src/auth/repository/dto/user_signup_dto.dart';
import 'package:comunic_app/src/auth/repository/model/user_signup.dart';
import 'package:dio/dio.dart';
import 'package:comunic_app/src/auth/common/config.dart';

import 'dto/user_dto.dart';
import 'model/user.dart';

class SignUpRepository {
  Future<bool> signUp(UserSignUp userSignUp) async {
    envVariables env = envVariables(); 
    final UserSignUpdto = UserSignUpdto.fromDomain(userSignUp); 
    final responde = await Dio().post('${env.URL}/users/login', data: dto.toJson());

    if([200,201].contains(responde.statusCode)){
      print(responde.data); 
      print("Usuario registrado com sucesso"); 
      return true; 
    }
    else{
      print("falha ao registrar"); 
      return false; 
    }
  }
}*/