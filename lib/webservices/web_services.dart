// abstract class Webservices {

// }

import 'package:dio/dio.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:retrofit/retrofit.dart';
import 'package:retrofit_flutter/jsontodartmodel/user.dart';
part 'web_services.g.dart';

@RestApi(baseUrl: 'https://gorest.co.in/public-api/')
 abstract class Webservices {
  factory Webservices(Dio dio, {String baseUrl}) = _Webservices;

  @GET('users')
  Future<List<User>> getAllUsers();
}
