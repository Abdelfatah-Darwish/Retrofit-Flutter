// ignore_for_file: avoid_print

import 'package:retrofit_flutter/model/user.dart';
import 'package:retrofit_flutter/webservices/web_services.dart';

class MyRepo {
  final Webservices webservices;

  MyRepo(this.webservices);

  Future<List<User>> getAllUsers() async {
    final response = await webservices.getAllUsers();

    //return response.map((singleUserfromJson) => User.fromJson(singleUserfromJson.toJson())).toList();

    List<User> allUsersList = [];
    for (var singleUserfromJson in response) {
      User user = User.fromJson(singleUserfromJson.toJson());

      allUsersList.add(user);
    }
    //print(allUser);
    return allUsersList;
  }
}
