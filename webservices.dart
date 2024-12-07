import 'package:app4/Users.dart';
import'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'webservices.g.dart';
@RestApi(baseUrl:"https://gorest.co.in/public/v2/")
abstract class WebServices {
  factory WebServices(Dio dio,{String baseUrl})= _WebServices;
  @GET('users')
  Future<List<dynamic>>getAllusers();
}