

import 'package:get_it/get_it.dart';
import 'package:pharmacy_app/services/shared_prefs_funcs.dart';
import 'package:pharmacy_app/services/user_service.dart';
import 'package:shared_preferences/shared_preferences.dart';

final getIt = GetIt.instance;

void setup() async {
  getIt.registerSingleton<UserService>(UserService());
}
