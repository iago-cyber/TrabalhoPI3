/*import 'package:comunic_app/src/auth/repository/model/user_signup.dart';

class UserSignUpdto{
  final String username;
  final String email; 
  final String password; 

  UserSignUpdto(this.email,this.password,this.username); 

  factory UserSignUpdto.fromJson(UserSignUp userSingUp) => 
    UserSignUpdto(userSingUp.username, userSingUp.email, userSingUp.password); 

  factory UserSignUpdto.fromJson(Map<String, dynamic> Json) => 
    UserSignUpdto(json['username'], json['email'], json['password']); 
  
  Map<String, dynamic> toJson() => {
    'username': username, 
    'email': email, 
    'password': password
  }; 
}*/