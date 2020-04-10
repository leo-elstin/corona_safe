import 'package:coronasafe/models/advices_data.dart';
import 'package:coronasafe/service/api_service.dart';
import 'package:flutter/material.dart';

class AdvicesModel extends ChangeNotifier {
  AdvicesModel() {
    fetchData();
  }

  AdvicesData _advicesData;

  /// GETTERS

  AdvicesData get advicesData => _advicesData;

  void fetchData() async {
    String data = await ApiService().getAdvices();
    try {
      AdvicesData advicesData = advicesDataFromJson(data);
      _advicesData = advicesData;
      notifyListeners();
    } catch (e) {
      throw e;
    }
  }
}
