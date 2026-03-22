
import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:alisoncart/models/home_model.dart';
import 'package:alisoncart/servieces/prefs_service.dart';
import 'package:alisoncart/utils/constants.dart';
import 'package:alisoncart/utils/helper_functions.dart';
import 'package:http/http.dart' as http;

class HomeService {

  final _prefService = PrefService();

   Future<HomeData>  getHomeData() async {
    Uri loginUrl = Uri.parse('${AppConstants.baseUrl}${AppConstants.home}/en?id=${_prefService.getString('id')}&token=${_prefService.getString('token')}');


    try {
      final response = await http.post(
        loginUrl,
       
        ).timeout(const Duration(seconds: 30));



      if (response.statusCode == 200) {
        final data = jsonDecode(response.body);

        if (data['success'] == 1) {
          return HomeData.fromJson(data);
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
