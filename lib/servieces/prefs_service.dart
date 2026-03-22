import 'package:shared_preferences/shared_preferences.dart';

class PrefService {

  static final PrefService _instance = PrefService._internal();
  factory PrefService() => _instance;

  PrefService._internal();

  SharedPreferences? _prefs;



   Future<void> init() async {
    _prefs = await SharedPreferences.getInstance();
  }


   Future<void> setString(String key, String value) async {
    await _prefs?.setString(key, value);
  }


    String getString(String key) {
    return _prefs?.getString(key) ?? '';
  }

}
