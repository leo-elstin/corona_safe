import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class ApiService {
  Dio _dio;
  static const _baseUrl = 'https://api.rootnet.in';

  static final ApiService _singleton = ApiService._internal();

  factory ApiService() {
    return _singleton;
  }

  ApiService._internal() {
    _dio = Dio();
  }

  Future<String> getStats() async {
    Response response;
    try {
      response = await _dio.get("$_baseUrl/covid19-in/stats/latest");
      debugPrint(response.statusMessage);

      return json.encode(response.data);
    } catch (e) {
      throw e;
    }
  }

  Future<String> getAdvices() async {
    Response response;
    try {
      response =
          await _dio.get("https://covid19trends.firebaseio.com/advices.json");
      debugPrint(response.statusMessage);
      return json.encode(response.data);
    } catch (e) {
      throw e;
    }
  }
}
