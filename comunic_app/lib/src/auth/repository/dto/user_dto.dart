
/*import 'package:dio/dio.dart';

import '../model/user.dart';

class UserDto {
  const UserDto(this.username, this.password);

  final String username;
  final String? password;

  factory UserDto.fromDomain(User user) {
    return UserDto(user.username, user.password);
  }

  factory UserDto.fromJson(Map<String, dynamic> json) =>
      UserDto(json['username'], json['password']);

  Map<String, dynamic> toJson() => {'username': username, 'password': password};
  FormData toFormData() =>
    FormData.fromMap({'username' : username, 'password': password}); 
  
}*/
