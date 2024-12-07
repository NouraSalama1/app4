import 'package:app4/Users.dart';
import 'package:app4/webservices.dart';

class MyRepo {
  final WebServices webServices;

  MyRepo(this.webServices);

  Future<List<Users>> getAllusers() async {
    var response = await webServices.getAllusers();
    return response.map((singleUsersDataFromJson) =>
      Users.fromJson(singleUsersDataFromJson)).toList();
  }
}