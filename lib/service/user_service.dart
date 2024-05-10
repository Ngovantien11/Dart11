import 'package:exam_sem4_dart/model/user.dart';

class UserService {

  User userInfo() {
    return User(
      id:1,
      name: 'John Doe',
      email: 'hn@gmail.com',
      password: '123456'
    );
    
  } 

  Future<User> getUser() async {
    // Simulate a network request
    await Future.delayed(Duration(seconds: 1));
    return User(
      id:1,
      name: 'John Doe',
      email: 'hn@gmail.com',
      password: '123456'
    );
  }

}