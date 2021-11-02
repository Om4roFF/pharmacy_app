

import 'package:flutter/cupertino.dart';

class AuthorizationProvider extends ChangeNotifier{

  bool _sign;
  bool _isLoading = false;

  AuthorizationProvider(this._sign);

  void setSign(bool signed){
    _sign = signed;
    notifyListeners();
  }

  void setLoading(bool isLoading){
    _isLoading = isLoading;
    notifyListeners();
  }

  bool get isSigned => _sign;
  bool get isLoading => _isLoading;

}