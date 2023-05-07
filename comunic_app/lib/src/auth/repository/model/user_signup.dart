import 'package:dio/dio.dart';

class UserSignUp{
  final String username; 
  final String email; 
  final String password;

  const UserSignUp(this.username, this.email, this.password);

  factory UserSignUp.fromJson(Map<String, dynamic> json) => 
    UserSignUp(
      json['username'], 
      json['email'],
      json['password']
    ); 

    FormData toFormData() =>
    FormData.fromMap({'username' : username, 'email' : email, 'password': password}); 
}