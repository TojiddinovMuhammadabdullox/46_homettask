import 'package:flutter_application_1/models/user.dart';
import 'package:flutter_application_1/services/user_http_serrvices.dart';

class UsersController {
  final userHttpService = UsersHttpService();
  Future<List<User>> getUsers() async {
    List<User> users = await userHttpService.getUsers();
    return users;
  }
}
