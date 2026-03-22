import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:alisoncart/models/customer_model.dart';
import 'package:alisoncart/utils/constants.dart';
import 'package:alisoncart/utils/helper_functions.dart';
import 'package:http/http.dart' as http;

class AuthService {
   Future<CustomerModel> login({
    required String email,
    required String password,
  }) async {
    Uri loginUrl = Uri.parse('${AppConstants.baseUrl}${AppConstants.login}?email_phone=$email&password=$password');


    try {
      final response = await http.post(
        loginUrl,
       
        ).timeout(const Duration(seconds: 30));



      if (response.statusCode == 200) {
        final data = jsonDecode(response.body);

        if (data['success'] == 1) {
          return CustomerModel.fromJson(data['customerdata']);
        } else {
          throw data['message'];
        }
      } else {
        throw AppHelpers.errorMessageHandler(response.statusCode);
      }
    } on SocketException  {
      throw 'Check your internet';
    }  on TimeoutException   {
      throw  'Connection time out , Try again';
    }
  }
}
