
/*import 'package:dio/dio.dart';
import 'package:comunic_app/src/auth/common/config.dart';

import 'dto/user_dto.dart';
import 'model/user.dart';


class LoginRepository implements  {
  @override
  Future<User> login(User user) async {
    envVariables env = envVariables(); 
    final dto = UserDto.fromDomain(user);
    final responde = await Dio().post('${env.URL}/user/login', data: dto.toFormData()); //atenção
    final response = await Dio().post(
      'http://flutter-api.mocklab.io/auth/login',
      data: dto.toJson(),
    );
    if (response.statusCode == 200) {
      final token = response.headers.value('Authorization');
      final domain = User(user.username, '', token: token);
      return Future.value(domain);
    } else {
      throw Exception("Usuário ou Senha Inválidos!");
    }
  }
}*/
