import 'dart:async';

import 'package:demo/ApiConstant.dart';
import 'package:http/http.dart' as http;

import '../model/User.dart';

class ApiService{
  Future<List<User>?> getUsers() async {
    try {
      var url = Uri.parse(ApiConstants.baseUrl + ApiConstants.usersEndpoint);
      var response = await http.get(url);
      if (response.statusCode == 200) {
        print('' + response.body.toString());

        List<User> _model = User.toListUser(response.body);
        return _model;
      }
    } catch (e) {
       print('' + e.toString());
    }
  }

  // Future<List<User>> getUsers1() async {
  //   try {
  //     var url = Uri.parse(ApiConstants.baseUrl + ApiConstants.usersEndpoint);
  //     var response = await http.get(url);
  //     if (response.statusCode == 200) {
  //       print('' + response.body.toString());
  //
  //       List<User> _model = User.toListUser(response.body);
  //       return _model;
  //     }
  //   } catch (e) {
  //      print('' + e.toString());
  //      rethrow;
  //   }
  // }
}