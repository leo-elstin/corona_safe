import 'package:coronasafe/models/country_report.dart';
import 'package:coronasafe/service/api_service.dart';
import 'package:flutter/cupertino.dart';
import 'package:shared_preferences/shared_preferences.dart';

class DataModel extends ChangeNotifier {
  static const FAV_ITEM = "favItem";

  /// Declare your initial calls here.
  /// Fetches the latest data when [ DataModel ] initialize
  DataModel() {
    getData();
  }

  Summary _summary;
  List<Regional> _regionalData = [];
  Regional _regional;

  String _favItem = "";
  String _searchWord = "";
  int _selectedItem = 0;

  String _error;

  /// GETTERS
  Summary get summary => _summary;

  Regional get regional => _regional;

  List<Regional> get regions => _regionalData;

  String get favItem => _favItem;

  String get error => _error;

  String get searchWord => _searchWord;

  int get selectedItem => _selectedItem;

  /// SETTERS
  set regional(Regional regional) {
    _regional = regional;
    notifyListeners();
  }

  set searchWord(String word) {
    _searchWord = word;
    notifyListeners();
  }

  /// ---------------------------------------------------------------------- ///
  ///                                                                        ///
  ///                              FUNCTIONS                                 ///
  ///                                                                        ///
  /// ---------------------------------------------------------------------- ///
  Future<Null> getData() async {
    String data = await ApiService().getStats().whenComplete(
      () {
        /// Set the error Object as NULL
        _error = null;
        notifyListeners();
      },
    ).catchError(
      (onError) {
        /// Set the error Object
        _error = onError.toString();
        notifyListeners();
      },
    );

    /// GET THE FAV ITEM FROM CACHE
    SharedPreferences _prefs = await SharedPreferences.getInstance();
    _favItem = _prefs.getString(FAV_ITEM);

    /// PROCESS THE STRING DATA
    _processData(data);
    return;
  }

  /// METHOD TO SET THE FAV ITEM
  void setFavItem(String fav, int position) async {
    SharedPreferences _prefs = await SharedPreferences.getInstance();
    _prefs.setString(FAV_ITEM, fav);
    _favItem = fav;
    _selectedItem = position;
    notifyListeners();
  }

  /// METHOD TO PROCESS THE DATA
  /// Converts to String object to [CustomerReport] Model
  /// Also identifies the previously favoured [_selectedItem]
  /// @prams String [data]
  void _processData(String data) {
    if (data != null) {
      try {
        // Converts the string to [ CustomerReport ] Model
        CountryReport countryReport = countryReportFromJson(data);
        _summary = countryReport?.data?.summary;
        _regionalData.addAll(countryReport?.data?.regional);
        // to find the favourite item index
        for (var i = 0; i < _regionalData.length; i++) {
          if (_regionalData[i].loc == _favItem) {
            _selectedItem = i;
          }
        }

        notifyListeners();
      } catch (e) {
        throw e;
      }
    }
  }
}
