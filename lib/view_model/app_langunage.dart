import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AppLanguage extends ChangeNotifier {
  Locale _appLocale = Locale('en');
  List<LangModel> _list = [];

  Locale get appLocal => _appLocale ?? Locale("en");

  List<LangModel> get languages => _list;

  fetchLocale() async {
    initLang();
    var prefs = await SharedPreferences.getInstance();
    if (prefs.getString('language_code') == null) {
      _appLocale = Locale('en');
      return Null;
    }
    _appLocale = Locale(
        prefs.getString('language_code'), prefs.getString('countryCode') ?? '');
    return Null;
  }

  void changeLanguage(Locale type) async {
    var prefs = await SharedPreferences.getInstance();
    if (_appLocale == type) {
      return;
    }
    if (type == Locale("ta")) {
      _appLocale = Locale("ta");
      await prefs.setString('language_code', 'ta');
      await prefs.setString('countryCode', 'IN');
    } else if (type == Locale('ml')) {
      _appLocale = Locale("ml");
      await prefs.setString('language_code', 'ml');
      await prefs.setString('countryCode', 'IN');
    } else if (type == Locale('hi')) {
      _appLocale = Locale("hi");
      await prefs.setString('language_code', 'hi');
      await prefs.setString('countryCode', 'IN');
    } else {
      _appLocale = Locale("en");
      await prefs.setString('language_code', 'en');
      await prefs.setString('countryCode', 'US');
    }
    notifyListeners();
  }

  void initLang() {
    _list.add(LangModel('en', 'English'));
    _list.add(LangModel('ta', 'தமிழ்'));
    _list.add(LangModel('ml', 'മലയാളം'));
    _list.add(LangModel('hi', 'हिन्दी'));
  }

  String getSelectedLang() {
    return _list
        .firstWhere((data) => data.code == appLocal.languageCode)
        .fullName;
  }
}

class LangModel {
  final String code;
  final String fullName;

  const LangModel(this.code, this.fullName);
}
