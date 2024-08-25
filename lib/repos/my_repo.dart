import 'package:retrofit_flutter/jsontodartmodel/user.dart';
import 'package:retrofit_flutter/webservices/web_services.dart';

class MyRepo {
  final Webservices webservices;

  MyRepo({required this.webservices});

  Future<List<User>> getAllUsers() async {
    final response = await webservices.getAllUsers();

    //return response.map((singleUserfromJson) => User.fromJson(singleUserfromJson.toJson())).toList();

    List<User> allUser = [];
    for (var singleUserfromJson in response) {
      User user = User.fromJson(singleUserfromJson.toJson());

      allUser.add(user);
    }
    return allUser;


    
  }
}
