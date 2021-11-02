import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefService {
  final Future<SharedPreferences> _sharedPreferences =
      SharedPreferences.getInstance();
  static const String _token = 'token';

  void setClientToken({String? token}) async {
    final sp = await _sharedPreferences;
    if(token != null){
      sp.setString(_token, token);
    }else{
      sp.remove(_token);
    }
  }

  Future<String?> get getClientToken async =>
      (await _sharedPreferences).getString(_token);
}
